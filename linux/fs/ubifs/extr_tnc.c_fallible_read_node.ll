; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_fallible_read_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_fallible_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%union.ubifs_key = type { i32 }
%struct.ubifs_zbranch = type { i32, i32, i32 }
%struct.ubifs_dent_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"LEB %d:%d, key \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"dangling branch LEB %d:%d len %d, key \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_zbranch*, i8*)* @fallible_read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallible_read_node(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.ubifs_zbranch* %2, i8* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca %struct.ubifs_zbranch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.ubifs_key, align 4
  %11 = alloca %struct.ubifs_dent_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store %struct.ubifs_zbranch* %2, %struct.ubifs_zbranch** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %13 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %14 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %17 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dbg_tnck(%union.ubifs_key* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %23 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %24 = call i32 @key_type(%struct.ubifs_info* %22, %union.ubifs_key* %23)
  %25 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %26 = call i32 @try_read_node(%struct.ubifs_info* %20, i8* %21, i32 %24, %struct.ubifs_zbranch* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %31, %struct.ubifs_dent_node** %11, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %33 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %34 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %33, i32 0, i32 0
  %35 = call i32 @key_read(%struct.ubifs_info* %32, i32* %34, %union.ubifs_key* %10)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %38 = call i64 @keys_cmp(%struct.ubifs_info* %36, %union.ubifs_key* %37, %union.ubifs_key* %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %52 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %53 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %56 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %7, align 8
  %59 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dbg_mntk(%union.ubifs_key* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %50, %45, %42
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*, i32, i32) #1

declare dso_local i32 @try_read_node(%struct.ubifs_info*, i8*, i32, %struct.ubifs_zbranch*) #1

declare dso_local i32 @key_type(%struct.ubifs_info*, %union.ubifs_key*) #1

declare dso_local i32 @key_read(%struct.ubifs_info*, i32*, %union.ubifs_key*) #1

declare dso_local i64 @keys_cmp(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @dbg_mntk(%union.ubifs_key*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
