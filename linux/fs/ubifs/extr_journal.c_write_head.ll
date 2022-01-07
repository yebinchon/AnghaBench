; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_write_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_write_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ubifs_wbuf }
%struct.ubifs_wbuf = type { i32, i32, i32 }

@GCHD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"jhead %s, LEB %d:%d, len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i8*, i32, i32*, i32*, i32)* @write_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_head(%struct.ubifs_info* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_wbuf*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.ubifs_wbuf* %24, %struct.ubifs_wbuf** %17, align 8
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GCHD, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %49, %58
  %60 = load i32*, i32** %14, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @dbg_jhead(i32 %61)
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @dbg_jnl(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64, i32 %66, i32 %67)
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %70 = call i64 @ubifs_authenticated(%struct.ubifs_info* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %7
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ubifs_hash_nodes(%struct.ubifs_info* %73, i8* %74, i32 %75, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %8, align 4
  br label %107

89:                                               ; preds = %72
  br label %90

90:                                               ; preds = %89, %7
  %91 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %17, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf* %91, i8* %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %8, align 4
  br label %107

99:                                               ; preds = %90
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %17, align 8
  %104 = call i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf* %103)
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %105, %97, %87
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_jnl(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i64 @ubifs_authenticated(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_hash_nodes(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_wbuf_write_nolock(%struct.ubifs_wbuf*, i8*, i32) #1

declare dso_local i32 @ubifs_wbuf_sync_nolock(%struct.ubifs_wbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
