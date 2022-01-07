; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_proc.c_register_handler_proc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_proc.c_register_handler_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i8*, i64 }
%struct.irq_desc = type { i32 }

@MAX_NAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_handler_proc(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.irq_desc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %9 = load i32, i32* @MAX_NAMELEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.irq_desc* @irq_to_desc(i32 %13)
  store %struct.irq_desc* %14, %struct.irq_desc** %7, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %21 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %26 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %32 = call i32 @name_unique(i32 %30, %struct.irqaction* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %24, %19, %2
  store i32 1, i32* %8, align 4
  br label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @MAX_NAMELEN, align 4
  %37 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %38 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @snprintf(i8* %12, i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load %struct.irq_desc*, %struct.irq_desc** %7, align 8
  %42 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @proc_mkdir(i8* %12, i32 %43)
  %45 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %46 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %35, %34
  %48 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %51 [
    i32 0, label %50
    i32 1, label %50
  ]

50:                                               ; preds = %47, %47
  ret void

51:                                               ; preds = %47
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #2

declare dso_local i32 @name_unique(i32, %struct.irqaction*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @proc_mkdir(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
