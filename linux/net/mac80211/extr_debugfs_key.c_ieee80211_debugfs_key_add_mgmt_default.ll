; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_key.c_ieee80211_debugfs_key_add_mgmt_default.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_debugfs_key.c_ieee80211_debugfs_key_add_mgmt_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_key = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"../keys/%d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"default_mgmt_key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_debugfs_key_add_mgmt_default(%struct.ieee80211_sub_if_data* %0) #0 {
  %2 = alloca %struct.ieee80211_sub_if_data*, align 8
  %3 = alloca [50 x i8], align 16
  %4 = alloca %struct.ieee80211_key*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %2, align 8
  %5 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ieee80211_key* @key_mtx_dereference(i32 %14, i32 %17)
  store %struct.ieee80211_key* %18, %struct.ieee80211_key** %4, align 8
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %20 = icmp ne %struct.ieee80211_key* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %11
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %23 = load %struct.ieee80211_key*, %struct.ieee80211_key** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %33 = call i32 @debugfs_create_symlink(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %40

37:                                               ; preds = %11
  %38 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %2, align 8
  %39 = call i32 @ieee80211_debugfs_key_remove_mgmt_default(%struct.ieee80211_sub_if_data* %38)
  br label %40

40:                                               ; preds = %10, %37, %21
  ret void
}

declare dso_local %struct.ieee80211_key* @key_mtx_dereference(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_symlink(i8*, i32, i8*) #1

declare dso_local i32 @ieee80211_debugfs_key_remove_mgmt_default(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
