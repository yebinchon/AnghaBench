; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_read_hashed_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_read_hashed_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.ubifs_zbranch = type { i64, i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*)* @tnc_read_hashed_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tnc_read_hashed_node(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %12 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %11, i32 0, i32 1
  %13 = call i32 @is_hash_key(%struct.ubifs_info* %10, i32* %12)
  %14 = call i32 @ubifs_assert(%struct.ubifs_info* %9, i32 %13)
  %15 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %16 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %21 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubifs_assert(%struct.ubifs_info* %20, i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %29 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %32 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @memcpy(i8* %27, i64 %30, i64 %33)
  store i32 0, i32* %4, align 4
  br label %74

35:                                               ; preds = %3
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %42 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %43 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %42, i32 0, i32 1
  %44 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @fallible_read_node(%struct.ubifs_info* %41, i32* %43, %struct.ubifs_zbranch* %44, i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %57

52:                                               ; preds = %40
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %49
  br label %63

58:                                               ; preds = %35
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %60 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @ubifs_tnc_read_node(%struct.ubifs_info* %59, %struct.ubifs_zbranch* %60, i8* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %74

68:                                               ; preds = %63
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %70 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @lnc_add(%struct.ubifs_info* %69, %struct.ubifs_zbranch* %70, i8* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %66, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @fallible_read_node(%struct.ubifs_info*, i32*, %struct.ubifs_zbranch*, i8*) #1

declare dso_local i32 @ubifs_tnc_read_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*) #1

declare dso_local i32 @lnc_add(%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
