; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_cmp_map_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_cmp_map_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_key = type { i64, i64, i64 }
%struct.uid_gid_extent = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_map_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_map_id(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.idmap_key*, align 8
  %10 = alloca %struct.uid_gid_extent*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.idmap_key*
  store %struct.idmap_key* %12, %struct.idmap_key** %9, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.uid_gid_extent*
  store %struct.uid_gid_extent* %14, %struct.uid_gid_extent** %10, align 8
  %15 = load %struct.idmap_key*, %struct.idmap_key** %9, align 8
  %16 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.idmap_key*, %struct.idmap_key** %9, align 8
  %19 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = sub nsw i64 %21, 1
  store i64 %22, i64* %8, align 8
  %23 = load %struct.idmap_key*, %struct.idmap_key** %9, align 8
  %24 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %10, align 8
  %29 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %10, align 8
  %33 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.uid_gid_extent*, %struct.uid_gid_extent** %10, align 8
  %38 = getelementptr inbounds %struct.uid_gid_extent, %struct.uid_gid_extent* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = sub nsw i64 %40, 1
  store i64 %41, i64* %7, align 8
  %42 = load %struct.idmap_key*, %struct.idmap_key** %9, align 8
  %43 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %35
  %48 = load %struct.idmap_key*, %struct.idmap_key** %9, align 8
  %49 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %74

62:                                               ; preds = %57, %53, %47, %35
  %63 = load %struct.idmap_key*, %struct.idmap_key** %9, align 8
  %64 = getelementptr inbounds %struct.idmap_key, %struct.idmap_key* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %62
  store i32 -1, i32* %3, align 4
  br label %74

73:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %61
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
