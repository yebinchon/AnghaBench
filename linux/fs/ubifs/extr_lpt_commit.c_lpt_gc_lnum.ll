; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_lpt_gc_lnum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_lpt_gc_lnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"LEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32)* @lpt_gc_lnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_gc_lnum(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dbg_lp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ubifs_leb_read(%struct.ubifs_info* %22, i32 %23, i8* %24, i32 0, i32 %27, i32 1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %97

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %47, %89
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @is_a_node(%struct.ubifs_info* %35, i8* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @get_pad_len(%struct.ubifs_info* %41, i8* %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr i8, i8* %49, i64 %50
  store i8* %51, i8** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %34

55:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %97

56:                                               ; preds = %34
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @get_lpt_node_type(%struct.ubifs_info* %57, i8* %58, i32* %9)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @get_lpt_node_len(%struct.ubifs_info* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ubifs_assert(%struct.ubifs_info* %68, i32 %71)
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @make_node_dirty(%struct.ubifs_info* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %56
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %97

89:                                               ; preds = %56
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr i8, i8* %91, i64 %92
  store i8* %93, i8** %12, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %34

97:                                               ; preds = %87, %55, %31
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @dbg_lp(i8*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @is_a_node(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @get_pad_len(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @get_lpt_node_type(%struct.ubifs_info*, i8*, i32*) #1

declare dso_local i32 @get_lpt_node_len(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @make_node_dirty(%struct.ubifs_info*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
