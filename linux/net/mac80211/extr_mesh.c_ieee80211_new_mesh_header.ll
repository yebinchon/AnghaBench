; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_new_mesh_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_new_mesh_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211s_hdr = type { i32, i32, i32, i32, i32 }

@MESH_FLAGS_AE_A4 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MESH_FLAGS_AE_A5_A6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_new_mesh_header(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211s_hdr* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211s_hdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211s_hdr* %1, %struct.ieee80211s_hdr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** %9, align 8
  %14 = icmp ne i8* %13, null
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i1 [ false, %4 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %95

21:                                               ; preds = %15
  %22 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %23 = call i32 @memset(%struct.ieee80211s_hdr* %22, i32 0, i32 20)
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %38, i32 0, i32 3
  %40 = call i32 @put_unaligned(i32 %37, i32* %39)
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %21
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @MESH_FLAGS_AE_A4, align 4
  %54 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @ETH_ALEN, align 4
  %63 = call i32 @memcpy(i32 %60, i8* %61, i32 %62)
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = mul nsw i32 2, %64
  store i32 %65, i32* %5, align 4
  br label %95

66:                                               ; preds = %49, %21
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %92

69:                                               ; preds = %66
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load i32, i32* @MESH_FLAGS_AE_A5_A6, align 4
  %74 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %75 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32 %80, i8* %81, i32 %82)
  %84 = load %struct.ieee80211s_hdr*, %struct.ieee80211s_hdr** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211s_hdr, %struct.ieee80211s_hdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32 %86, i8* %87, i32 %88)
  %90 = load i32, i32* @ETH_ALEN, align 4
  %91 = mul nsw i32 3, %90
  store i32 %91, i32* %5, align 4
  br label %95

92:                                               ; preds = %69, %66
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* @ETH_ALEN, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %72, %52, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.ieee80211s_hdr*, i32, i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
