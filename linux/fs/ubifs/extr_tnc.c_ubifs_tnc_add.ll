; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { %struct.ubifs_zbranch* }
%struct.ubifs_zbranch = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"%d:%d, len %d, key \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_add(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_znode*, align 8
  %17 = alloca %struct.ubifs_zbranch, align 8
  %18 = alloca %struct.ubifs_zbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @dbg_tnck(%union.ubifs_key* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %28 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %29 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %27, %union.ubifs_key* %28, %struct.ubifs_znode** %16, i32* %14)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %6
  %33 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %17, i32 0, i32 5
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %17, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %17, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %17, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %17, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %40, i32* %41, i32 %43)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %46 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %47 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %17, i32 0, i32 4
  %48 = call i32 @key_copy(%struct.ubifs_info* %45, %union.ubifs_key* %46, i32* %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %16, align 8
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i32 @tnc_insert(%struct.ubifs_info* %49, %struct.ubifs_znode* %50, %struct.ubifs_zbranch* %17, i32 %52)
  store i32 %53, i32* %15, align 4
  br label %92

54:                                               ; preds = %6
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %89

57:                                               ; preds = %54
  %58 = load %struct.ubifs_znode*, %struct.ubifs_znode** %16, align 8
  %59 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %58, i32 0, i32 0
  %60 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %60, i64 %62
  store %struct.ubifs_zbranch* %63, %struct.ubifs_zbranch** %18, align 8
  %64 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %65 = call i32 @lnc_free(%struct.ubifs_zbranch* %64)
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %67 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %68 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %71 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %66, i32 %69, i32 %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %76 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %79 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %82 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %18, align 8
  %86 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ubifs_copy_hash(%struct.ubifs_info* %83, i32* %84, i32 %87)
  br label %91

89:                                               ; preds = %54
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %89, %57
  br label %92

92:                                               ; preds = %91, %32
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %97 = call i32 @dbg_check_tnc(%struct.ubifs_info* %96, i32 0)
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %100 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %15, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*, i32, i32, i32) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @ubifs_copy_hash(%struct.ubifs_info*, i32*, i32) #1

declare dso_local i32 @key_copy(%struct.ubifs_info*, %union.ubifs_key*, i32*) #1

declare dso_local i32 @tnc_insert(%struct.ubifs_info*, %struct.ubifs_znode*, %struct.ubifs_zbranch*, i32) #1

declare dso_local i32 @lnc_free(%struct.ubifs_zbranch*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
