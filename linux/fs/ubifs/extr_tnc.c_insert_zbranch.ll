; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_insert_zbranch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_insert_zbranch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_znode = type { i32, i32, %struct.ubifs_zbranch*, i64 }
%struct.ubifs_zbranch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_znode*, %struct.ubifs_zbranch*, i32)* @insert_zbranch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_zbranch(%struct.ubifs_info* %0, %struct.ubifs_znode* %1, %struct.ubifs_zbranch* %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca %struct.ubifs_zbranch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_znode* %1, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_zbranch* %2, %struct.ubifs_zbranch** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %12 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %11)
  %13 = call i32 @ubifs_assert(%struct.ubifs_info* %10, i32 %12)
  %14 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %78

18:                                               ; preds = %4
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %63, %18
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %66

26:                                               ; preds = %22
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %27, i32 0, i32 2
  %29 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %29, i64 %31
  %33 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %34 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %33, i32 0, i32 2
  %35 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %35, i64 %38
  %40 = bitcast %struct.ubifs_zbranch* %32 to i8*
  %41 = bitcast %struct.ubifs_zbranch* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  %42 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %43 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %42, i32 0, i32 2
  %44 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %44, i64 %46
  %48 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = icmp ne %struct.TYPE_2__* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %26
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %54 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %53, i32 0, i32 2
  %55 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %55, i64 %57
  %59 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %52, i32* %61, align 4
  br label %62

62:                                               ; preds = %51, %26
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %22

66:                                               ; preds = %22
  %67 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %68 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %74 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %66
  br label %106

78:                                               ; preds = %4
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %80 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %102, %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %88 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %87, i32 0, i32 2
  %89 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %89, i64 %91
  %93 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %94 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %93, i32 0, i32 2
  %95 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %95, i64 %98
  %100 = bitcast %struct.ubifs_zbranch* %92 to i8*
  %101 = bitcast %struct.ubifs_zbranch* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 8, i1 false)
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %9, align 4
  br label %82

105:                                              ; preds = %82
  br label %106

106:                                              ; preds = %105, %77
  %107 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %108 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %107, i32 0, i32 2
  %109 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %109, i64 %111
  %113 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %114 = bitcast %struct.ubifs_zbranch* %112 to i8*
  %115 = bitcast %struct.ubifs_zbranch* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 8, i1 false)
  %116 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %117 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %124 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %106
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
