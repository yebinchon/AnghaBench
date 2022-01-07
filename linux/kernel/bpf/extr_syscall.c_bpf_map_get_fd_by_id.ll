; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_get_fd_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_syscall.c_bpf_map_get_fd_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }
%struct.bpf_map = type { i32 }

@BPF_MAP_GET_FD_BY_ID = common dso_local global i32 0, align 4
@BPF_OBJ_FLAG_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@map_idr_lock = common dso_local global i32 0, align 4
@map_idr = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*)* @bpf_map_get_fd_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_map_get_fd_by_id(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %8 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %9 = bitcast %union.bpf_attr* %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @BPF_MAP_GET_FD_BY_ID, align 4
  %12 = call i64 @CHECK_ATTR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %16 = bitcast %union.bpf_attr* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BPF_OBJ_FLAG_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %73

25:                                               ; preds = %14
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %73

32:                                               ; preds = %25
  %33 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %34 = bitcast %union.bpf_attr* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bpf_get_file_flag(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %73

41:                                               ; preds = %32
  %42 = call i32 @spin_lock_bh(i32* @map_idr_lock)
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.bpf_map* @idr_find(i32* @map_idr, i32 %43)
  store %struct.bpf_map* %44, %struct.bpf_map** %4, align 8
  %45 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %46 = icmp ne %struct.bpf_map* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %49 = call %struct.bpf_map* @__bpf_map_inc_not_zero(%struct.bpf_map* %48, i32 1)
  store %struct.bpf_map* %49, %struct.bpf_map** %4, align 8
  br label %54

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.bpf_map* @ERR_PTR(i32 %52)
  store %struct.bpf_map* %53, %struct.bpf_map** %4, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = call i32 @spin_unlock_bh(i32* @map_idr_lock)
  %56 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %57 = call i64 @IS_ERR(%struct.bpf_map* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %61 = call i32 @PTR_ERR(%struct.bpf_map* %60)
  store i32 %61, i32* %2, align 4
  br label %73

62:                                               ; preds = %54
  %63 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @bpf_map_new_fd(%struct.bpf_map* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.bpf_map*, %struct.bpf_map** %4, align 8
  %70 = call i32 @bpf_map_put_with_uref(%struct.bpf_map* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %59, %39, %29, %22
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @CHECK_ATTR(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @bpf_get_file_flag(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.bpf_map* @idr_find(i32*, i32) #1

declare dso_local %struct.bpf_map* @__bpf_map_inc_not_zero(%struct.bpf_map*, i32) #1

declare dso_local %struct.bpf_map* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @IS_ERR(%struct.bpf_map*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_map*) #1

declare dso_local i32 @bpf_map_new_fd(%struct.bpf_map*, i32) #1

declare dso_local i32 @bpf_map_put_with_uref(%struct.bpf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
