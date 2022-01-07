; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_remove_nh_grp_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_remove_nh_grp_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nh_grp_entry = type { i32, %struct.nexthop*, i32, i32 }
%struct.nexthop = type { i32 }
%struct.nh_group = type { i32, %struct.nh_grp_entry* }
%struct.nl_info = type { i32 }

@RTM_NEWNEXTHOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nh_grp_entry*, %struct.nh_group*, %struct.nl_info*)* @remove_nh_grp_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_nh_grp_entry(%struct.nh_grp_entry* %0, %struct.nh_group* %1, %struct.nl_info* %2) #0 {
  %4 = alloca %struct.nh_grp_entry*, align 8
  %5 = alloca %struct.nh_group*, align 8
  %6 = alloca %struct.nl_info*, align 8
  %7 = alloca %struct.nexthop*, align 8
  %8 = alloca %struct.nh_grp_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nh_grp_entry* %0, %struct.nh_grp_entry** %4, align 8
  store %struct.nh_group* %1, %struct.nh_group** %5, align 8
  store %struct.nl_info* %2, %struct.nl_info** %6, align 8
  %11 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %4, align 8
  %12 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %11, i32 0, i32 1
  %13 = load %struct.nexthop*, %struct.nexthop** %12, align 8
  store %struct.nexthop* %13, %struct.nexthop** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %15 = icmp ne %struct.nexthop* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %20 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %19, i32 0, i32 1
  %21 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %20, align 8
  store %struct.nh_grp_entry* %21, %struct.nh_grp_entry** %8, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %91, %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %25 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %94

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %28
  %32 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %35, i32 0, i32 1
  %37 = load %struct.nexthop*, %struct.nexthop** %36, align 8
  %38 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %38, i64 %41
  %43 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %42, i32 0, i32 1
  store %struct.nexthop* %37, %struct.nexthop** %43, align 8
  %44 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %44, i64 %46
  %48 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %50, i64 %53
  %55 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %54, i32 0, i32 3
  store i32 %49, i32* %55, align 4
  %56 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %56, i64 %58
  %60 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %59, i32 0, i32 2
  %61 = call i32 @list_del(i32* %60)
  %62 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %62, i64 %65
  %67 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %66, i32 0, i32 2
  %68 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %68, i64 %71
  %73 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %72, i32 0, i32 1
  %74 = load %struct.nexthop*, %struct.nexthop** %73, align 8
  %75 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %74, i32 0, i32 0
  %76 = call i32 @list_add(i32* %67, i32* %75)
  br label %90

77:                                               ; preds = %28
  %78 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %79 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %78, i32 0, i32 1
  %80 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %80, i64 %82
  %84 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %83, i32 0, i32 1
  %85 = load %struct.nexthop*, %struct.nexthop** %84, align 8
  %86 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %87 = icmp eq %struct.nexthop* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %31
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %22

94:                                               ; preds = %22
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @WARN_ON(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %129

102:                                              ; preds = %94
  %103 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %104 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %108 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %107, i32 0, i32 1
  %109 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %108, align 8
  %110 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %111 = getelementptr inbounds %struct.nh_group, %struct.nh_group* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %109, i64 %113
  %115 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %114, i32 0, i32 1
  store %struct.nexthop* null, %struct.nexthop** %115, align 8
  %116 = load %struct.nh_group*, %struct.nh_group** %5, align 8
  %117 = call i32 @nh_group_rebalance(%struct.nh_group* %116)
  %118 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %119 = call i32 @nexthop_put(%struct.nexthop* %118)
  %120 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %121 = icmp ne %struct.nl_info* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %102
  %123 = load i32, i32* @RTM_NEWNEXTHOP, align 4
  %124 = load %struct.nh_grp_entry*, %struct.nh_grp_entry** %4, align 8
  %125 = getelementptr inbounds %struct.nh_grp_entry, %struct.nh_grp_entry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.nl_info*, %struct.nl_info** %6, align 8
  %128 = call i32 @nexthop_notify(i32 %123, i32 %126, %struct.nl_info* %127)
  br label %129

129:                                              ; preds = %101, %122, %102
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @nh_group_rebalance(%struct.nh_group*) #1

declare dso_local i32 @nexthop_put(%struct.nexthop*) #1

declare dso_local i32 @nexthop_notify(i32, i32, %struct.nl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
