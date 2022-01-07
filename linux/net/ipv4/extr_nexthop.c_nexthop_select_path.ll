; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_select_path.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nexthop_select_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nexthop = type { i32, i32, i32 }
%struct.nh_group = type { i32, %struct.nh_grp_entry* }
%struct.nh_grp_entry = type { %struct.nexthop*, i32 }
%struct.nh_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nexthop* @nexthop_select_path(%struct.nexthop* %0, i32 %1) #0 {
  %3 = alloca %struct.nexthop*, align 8
  %4 = alloca %struct.nexthop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nexthop*, align 8
  %7 = alloca %struct.nh_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nh_grp_entry*, align 8
  %10 = alloca %struct.nh_info*, align 8
  store %struct.nexthop* %0, %struct.nexthop** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nexthop* null, %struct.nexthop** %6, align 8
  %11 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  %12 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  store %struct.nexthop* %16, %struct.nexthop** %3, align 8
  br label %86

17:                                               ; preds = %2
  %18 = load %struct.nexthop*, %struct.nexthop** %4, align 8
  %19 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @rcu_dereference(i32 %20)
  %22 = bitcast i8* %21 to %struct.nh_group*
  store %struct.nh_group* %22, %struct.nh_group** %7, align 8
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %81, %17
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.nh_group*, %struct.nh_group** %7, align 8
  %26 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %84

29:                                               ; preds = %23
  %30 = load %struct.nh_group*, %struct.nh_group** %7, align 8
  %31 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %30, i32 0, i32 1
  %32 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %32, i64 %34
  store %struct.nh_grp_entry* %35, %struct.nh_grp_entry** %9, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %9, align 8
  %38 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %37, i32 0, i32 1
  %39 = call i32 @atomic_read(i32* %38)
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %81

42:                                               ; preds = %29
  %43 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %9, align 8
  %44 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %43, i32 0, i32 0
  %45 = load %struct.nexthop*, %struct.nexthop** %44, align 8
  %46 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @rcu_dereference(i32 %47)
  %49 = bitcast i8* %48 to %struct.nh_info*
  store %struct.nh_info* %49, %struct.nh_info** %10, align 8
  %50 = load %struct.nh_info*, %struct.nh_info** %10, align 8
  %51 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %73 [
    i32 129, label %53
    i32 128, label %63
  ]

53:                                               ; preds = %42
  %54 = load %struct.nh_info*, %struct.nh_info** %10, align 8
  %55 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %54, i32 0, i32 2
  %56 = call i32 @ipv4_good_nh(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %9, align 8
  %60 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %59, i32 0, i32 0
  %61 = load %struct.nexthop*, %struct.nexthop** %60, align 8
  store %struct.nexthop* %61, %struct.nexthop** %3, align 8
  br label %86

62:                                               ; preds = %53
  br label %73

63:                                               ; preds = %42
  %64 = load %struct.nh_info*, %struct.nh_info** %10, align 8
  %65 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %64, i32 0, i32 1
  %66 = call i32 @ipv6_good_nh(i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %9, align 8
  %70 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %69, i32 0, i32 0
  %71 = load %struct.nexthop*, %struct.nexthop** %70, align 8
  store %struct.nexthop* %71, %struct.nexthop** %3, align 8
  br label %86

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %42, %72, %62
  %74 = load %struct.nexthop*, %struct.nexthop** %6, align 8
  %75 = icmp ne %struct.nexthop* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %9, align 8
  %78 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %77, i32 0, i32 0
  %79 = load %struct.nexthop*, %struct.nexthop** %78, align 8
  store %struct.nexthop* %79, %struct.nexthop** %6, align 8
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %41
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %23

84:                                               ; preds = %23
  %85 = load %struct.nexthop*, %struct.nexthop** %6, align 8
  store %struct.nexthop* %85, %struct.nexthop** %3, align 8
  br label %86

86:                                               ; preds = %84, %68, %58, %15
  %87 = load %struct.nexthop*, %struct.nexthop** %3, align 8
  ret %struct.nexthop* %87
}

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ipv4_good_nh(i32*) #1

declare dso_local i32 @ipv6_good_nh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
