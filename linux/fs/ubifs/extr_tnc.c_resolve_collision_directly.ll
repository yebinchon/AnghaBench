; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_resolve_collision_directly.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_resolve_collision_directly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, i32, i32)* @resolve_collision_directly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_collision_directly(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_znode** %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca %struct.ubifs_znode**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_znode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %9, align 8
  store %struct.ubifs_znode** %2, %struct.ubifs_znode*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %10, align 8
  %18 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  store %struct.ubifs_znode* %18, %struct.ubifs_znode** %14, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %22 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %15, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @matches_position(%struct.TYPE_2__* %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %124

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %32, %75
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %35 = call i32 @tnc_prev(%struct.ubifs_info* %34, %struct.ubifs_znode** %14, i32* %15)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %76

41:                                               ; preds = %33
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %7, align 4
  br label %124

46:                                               ; preds = %41
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %48 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %49 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %56 = call i64 @keys_cmp(%struct.ubifs_info* %47, i32* %54, %union.ubifs_key* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %76

59:                                               ; preds = %46
  %60 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %61 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @matches_position(%struct.TYPE_2__* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %72 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %10, align 8
  store %struct.ubifs_znode* %71, %struct.ubifs_znode** %72, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  store i32 1, i32* %7, align 4
  br label %124

75:                                               ; preds = %59
  br label %33

76:                                               ; preds = %58, %40
  %77 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %10, align 8
  %78 = load %struct.ubifs_znode*, %struct.ubifs_znode** %77, align 8
  store %struct.ubifs_znode* %78, %struct.ubifs_znode** %14, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %76, %123
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %83 = call i32 @tnc_next(%struct.ubifs_info* %82, %struct.ubifs_znode** %14, i32* %15)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %124

89:                                               ; preds = %81
  %90 = load i32, i32* %16, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %7, align 4
  br label %124

94:                                               ; preds = %89
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %96 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %97 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %104 = call i64 @keys_cmp(%struct.ubifs_info* %95, i32* %102, %union.ubifs_key* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  store i32 0, i32* %7, align 4
  br label %124

107:                                              ; preds = %94
  %108 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %109 = load %struct.ubifs_znode**, %struct.ubifs_znode*** %10, align 8
  store %struct.ubifs_znode* %108, %struct.ubifs_znode** %109, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  %112 = load %struct.ubifs_znode*, %struct.ubifs_znode** %14, align 8
  %113 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @matches_position(%struct.TYPE_2__* %117, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  store i32 1, i32* %7, align 4
  br label %124

123:                                              ; preds = %107
  br label %81

124:                                              ; preds = %122, %106, %92, %88, %70, %44, %31
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i64 @matches_position(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @tnc_prev(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
