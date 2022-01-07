; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_resolve_symbol_wait.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_resolve_symbol_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_symbol = type { i32 }
%struct.module = type { i32 }
%struct.load_info = type { i32 }

@MODULE_NAME_LEN = common dso_local global i32 0, align 4
@module_wq = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: gave up waiting for init of module %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernel_symbol* (%struct.module*, %struct.load_info*, i8*)* @resolve_symbol_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernel_symbol* @resolve_symbol_wait(%struct.module* %0, %struct.load_info* %1, i8* %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.load_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kernel_symbol*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.module* %0, %struct.module** %4, align 8
  store %struct.load_info* %1, %struct.load_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @MODULE_NAME_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @module_wq, align 4
  %15 = load %struct.module*, %struct.module** %4, align 8
  %16 = load %struct.load_info*, %struct.load_info** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call %struct.kernel_symbol* @resolve_symbol(%struct.module* %15, %struct.load_info* %16, i8* %17, i8* %13)
  store %struct.kernel_symbol* %18, %struct.kernel_symbol** %7, align 8
  %19 = call i32 @IS_ERR(%struct.kernel_symbol* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.kernel_symbol*, %struct.kernel_symbol** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.kernel_symbol* %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ true, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 30, %30
  %32 = call i64 @wait_event_interruptible_timeout(i32 %14, i32 %29, i32 %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.module*, %struct.module** %4, align 8
  %36 = getelementptr inbounds %struct.module, %struct.module* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %13)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.kernel_symbol*, %struct.kernel_symbol** %7, align 8
  %41 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %41)
  ret %struct.kernel_symbol* %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wait_event_interruptible_timeout(i32, i32, i32) #2

declare dso_local i32 @IS_ERR(%struct.kernel_symbol*) #2

declare dso_local %struct.kernel_symbol* @resolve_symbol(%struct.module*, %struct.load_info*, i8*, i8*) #2

declare dso_local i32 @PTR_ERR(%struct.kernel_symbol*) #2

declare dso_local i32 @pr_warn(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
