; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_crash_copy_vmcoreinfo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_crash_copy_vmcoreinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i64, i8* }
%struct.page = type { i32 }

@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Could not allocate vmcoreinfo buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not vmap vmcoreinfo buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kimage_crash_copy_vmcoreinfo(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %6 = load %struct.kimage*, %struct.kimage** %3, align 8
  %7 = getelementptr inbounds %struct.kimage, %struct.kimage* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.kimage*, %struct.kimage** %3, align 8
  %14 = call %struct.page* @kimage_alloc_control_pages(%struct.kimage* %13, i32 0)
  store %struct.page* %14, %struct.page** %4, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %12
  %22 = load i32, i32* @VM_MAP, align 4
  %23 = load i32, i32* @PAGE_KERNEL, align 4
  %24 = call i8* @vmap(%struct.page** %4, i32 1, i32 %22, i32 %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.kimage*, %struct.kimage** %3, align 8
  %34 = getelementptr inbounds %struct.kimage, %struct.kimage* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @crash_update_vmcoreinfo_safecopy(i8* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %27, %17, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.page* @kimage_alloc_control_pages(%struct.kimage*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i8* @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @crash_update_vmcoreinfo_safecopy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
