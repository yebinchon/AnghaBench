; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_file_map_prot_check.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_file_map_prot_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cred = type { i32 }

@default_noexec = common dso_local global i64 0, align 8
@PROT_EXEC = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i64 0, align 8
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_PROCESS = common dso_local global i32 0, align 4
@PROCESS__EXECMEM = common dso_local global i32 0, align 4
@FILE__READ = common dso_local global i32 0, align 4
@FILE__WRITE = common dso_local global i32 0, align 4
@FILE__EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i32)* @file_map_prot_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_map_prot_check(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %12, %struct.cred** %8, align 8
  %13 = load %struct.cred*, %struct.cred** %8, align 8
  %14 = call i32 @cred_sid(%struct.cred* %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @default_noexec, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @PROT_EXEC, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = icmp ne %struct.file* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = call i32 @file_inode(%struct.file* %26)
  %28 = call i64 @IS_PRIVATE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @PROT_WRITE, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33, %25, %22
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @SECCLASS_PROCESS, align 4
  %42 = load i32, i32* @PROCESS__EXECMEM, align 4
  %43 = call i32 @avc_has_perm(i32* @selinux_state, i32 %39, i32 %40, i32 %41, i32 %42, i32* null)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %79

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %33, %30, %17, %3
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = icmp ne %struct.file* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = load i32, i32* @FILE__READ, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @PROT_WRITE, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @FILE__WRITE, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %55, %51
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @PROT_EXEC, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @FILE__EXECUTE, align 4
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.cred*, %struct.cred** %8, align 8
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @file_has_perm(%struct.cred* %74, %struct.file* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %81

78:                                               ; preds = %48
  br label %79

79:                                               ; preds = %78, %46
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %73
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local i64 @IS_PRIVATE(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @file_has_perm(%struct.cred*, %struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
