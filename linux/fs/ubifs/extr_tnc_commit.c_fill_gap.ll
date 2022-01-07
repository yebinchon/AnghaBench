; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_fill_gap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc_commit.c_fill_gap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, %struct.ubifs_znode*, %struct.ubifs_znode* }
%struct.ubifs_znode = type { %struct.ubifs_znode*, i32 }

@.str = private unnamed_addr constant [56 x i8] c"LEB %d:%d to %d len %d nodes written %d wasted bytes %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32, i32*)* @fill_gap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_gap(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_znode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 7
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ubifs_assert(%struct.ubifs_info* %20, i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 7
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubifs_assert(%struct.ubifs_info* %26, i32 %30)
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ubifs_assert(%struct.ubifs_info* %32, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %164

44:                                               ; preds = %5
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %117, %44
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 4
  %49 = load %struct.ubifs_znode*, %struct.ubifs_znode** %48, align 8
  %50 = icmp ne %struct.ubifs_znode* %49, null
  br i1 %50, label %51, label %118

51:                                               ; preds = %46
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 4
  %55 = load %struct.ubifs_znode*, %struct.ubifs_znode** %54, align 8
  %56 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ubifs_idx_node_sz(%struct.ubifs_info* %52, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %116

62:                                               ; preds = %51
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 4
  %65 = load %struct.ubifs_znode*, %struct.ubifs_znode** %64, align 8
  store %struct.ubifs_znode* %65, %struct.ubifs_znode** %17, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i8* @ALIGN(i32 %66, i32 8)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %18, align 4
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp sle i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ubifs_assert(%struct.ubifs_info* %69, i32 %73)
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @make_idx_node(%struct.ubifs_info* %75, i64 %81, %struct.ubifs_znode* %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %62
  %90 = load i32, i32* %19, align 4
  store i32 %90, i32* %6, align 4
  br label %164

91:                                               ; preds = %62
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load %struct.ubifs_znode*, %struct.ubifs_znode** %17, align 8
  %99 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %98, i32 0, i32 0
  %100 = load %struct.ubifs_znode*, %struct.ubifs_znode** %99, align 8
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 4
  store %struct.ubifs_znode* %100, %struct.ubifs_znode** %102, align 8
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %104 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %103, i32 0, i32 4
  %105 = load %struct.ubifs_znode*, %struct.ubifs_znode** %104, align 8
  %106 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %107 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %106, i32 0, i32 5
  %108 = load %struct.ubifs_znode*, %struct.ubifs_znode** %107, align 8
  %109 = icmp eq %struct.ubifs_znode* %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %91
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %112 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %111, i32 0, i32 4
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %112, align 8
  br label %113

113:                                              ; preds = %110, %91
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %117

116:                                              ; preds = %51
  br label %118

117:                                              ; preds = %113
  br label %46

118:                                              ; preds = %116, %46
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %119, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %118
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %127 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @ALIGN(i32 %125, i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %134 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %14, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %16, align 4
  br label %140

138:                                              ; preds = %118
  %139 = load i32, i32* %13, align 4
  store i32 %139, i32* %16, align 4
  br label %140

140:                                              ; preds = %138, %124
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %144, %145
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @dbg_gc(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %141, i32 %142, i32 %143, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @ubifs_pad(%struct.ubifs_info* %150, i64 %156, i32 %157)
  %159 = load i32, i32* %16, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %159
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %140, %89, %43
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_idx_node_sz(%struct.ubifs_info*, i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @make_idx_node(%struct.ubifs_info*, i64, %struct.ubifs_znode*, i32, i32, i32) #1

declare dso_local i32 @dbg_gc(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
