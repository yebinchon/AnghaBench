; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_remove_arg_zero.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_remove_arg_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64, i32 }
%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_arg_zero(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %60, %13
  %15 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %16 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %22 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %23 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.page* @get_arg_page(%struct.linux_binprm* %21, i64 %24, i32 0)
  store %struct.page* %25, %struct.page** %7, align 8
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = icmp ne %struct.page* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %14
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %73

31:                                               ; preds = %14
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i8* @kmap_atomic(%struct.page* %32)
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %48, %31
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %38, %34
  %46 = phi i1 [ false, %34 ], [ %44, %38 ]
  br i1 %46, label %47, label %55

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  %51 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %52 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %34

55:                                               ; preds = %45
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @kunmap_atomic(i8* %56)
  %58 = load %struct.page*, %struct.page** %7, align 8
  %59 = call i32 @put_arg_page(%struct.page* %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %14, label %64

64:                                               ; preds = %60
  %65 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %66 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %70 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %64, %28
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.page* @get_arg_page(%struct.linux_binprm*, i64, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @put_arg_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
