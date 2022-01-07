; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_read_wbuf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_read_wbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i32, i32, i32, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"LEB %d:%d, length %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_wbuf*, i8*, i32, i32, i32)* @read_wbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_wbuf(%struct.ubifs_wbuf* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_wbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %16 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %15, i32 0, i32 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %16, align 8
  store %struct.ubifs_info* %17, %struct.ubifs_info** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @dbg_io(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %23 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %24 = icmp ne %struct.ubifs_wbuf* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp sge i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28, %25, %5
  %38 = phi i1 [ false, %28 ], [ false, %25 ], [ false, %5 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ubifs_assert(%struct.ubifs_info* %22, i32 %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 7
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i1 [ false, %37 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ubifs_assert(%struct.ubifs_info* %41, i32 %53)
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ubifs_assert(%struct.ubifs_info* %55, i32 %63)
  %65 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %66 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %65, i32 0, i32 3
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %70 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %51
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %78 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br label %81

81:                                               ; preds = %73, %51
  %82 = phi i1 [ false, %51 ], [ %80, %73 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %88 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %87, i32 0, i32 3
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ubifs_leb_read(%struct.ubifs_info* %90, i32 %91, i8* %92, i32 %93, i32 %94, i32 0)
  store i32 %95, i32* %6, align 4
  br label %138

96:                                               ; preds = %81
  %97 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %98 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %96
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr i8, i8* %106, i64 %108
  %110 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %111 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %118 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %116, %119
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %13, align 4
  %123 = sub nsw i32 %121, %122
  %124 = call i32 @memcpy(i8* %109, i32 %120, i32 %123)
  %125 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %7, align 8
  %126 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %125, i32 0, i32 3
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load i32, i32* %13, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %105
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @ubifs_leb_read(%struct.ubifs_info* %131, i32 %132, i8* %133, i32 %134, i32 %135, i32 0)
  store i32 %136, i32* %6, align 4
  br label %138

137:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %138

138:                                              ; preds = %137, %130, %86
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
