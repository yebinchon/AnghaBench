; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_util.c_ipcperms.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_util.c_ipcperms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32 }
%struct.kern_ipc_perm = type { i32, i32, i32, i32, i32 }

@CAP_IPC_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcperms(%struct.ipc_namespace* %0, %struct.kern_ipc_perm* %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipc_namespace*, align 8
  %6 = alloca %struct.kern_ipc_perm*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %5, align 8
  store %struct.kern_ipc_perm* %1, %struct.kern_ipc_perm** %6, align 8
  store i16 %2, i16* %7, align 2
  %11 = call i32 (...) @current_euid()
  store i32 %11, i32* %8, align 4
  %12 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %13 = call i32 @audit_ipc_obj(%struct.kern_ipc_perm* %12)
  %14 = load i16, i16* %7, align 2
  %15 = sext i16 %14 to i32
  %16 = ashr i32 %15, 6
  %17 = load i16, i16* %7, align 2
  %18 = sext i16 %17 to i32
  %19 = ashr i32 %18, 3
  %20 = or i32 %16, %19
  %21 = load i16, i16* %7, align 2
  %22 = sext i16 %21 to i32
  %23 = or i32 %20, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %25 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %29 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @uid_eq(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %36 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @uid_eq(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %3
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 6
  store i32 %42, i32* %10, align 4
  br label %59

43:                                               ; preds = %33
  %44 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %45 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @in_group_p(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %51 = getelementptr inbounds %struct.kern_ipc_perm, %struct.kern_ipc_perm* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @in_group_p(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 3
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %49
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = and i32 %63, 7
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %68 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAP_IPC_OWNER, align 4
  %71 = call i32 @ns_capable(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %78

74:                                               ; preds = %66, %59
  %75 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %6, align 8
  %76 = load i16, i16* %7, align 2
  %77 = call i32 @security_ipc_permission(%struct.kern_ipc_perm* %75, i16 signext %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @audit_ipc_obj(%struct.kern_ipc_perm*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i64 @in_group_p(i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @security_ipc_permission(%struct.kern_ipc_perm*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
