; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_lnc_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_lnc_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_zbranch = type { i64, i8*, i32 }
%struct.ubifs_dent_node = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*)* @lnc_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnc_add(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ubifs_dent_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %12, %struct.ubifs_dent_node** %10, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @ubifs_assert(%struct.ubifs_info* %13, i32 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %22 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %23 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ubifs_assert(%struct.ubifs_info* %21, i32 %26)
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %30 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %30, i32 0, i32 2
  %32 = call i32 @is_hash_key(%struct.ubifs_info* %29, i32* %31)
  %33 = call i32 @ubifs_assert(%struct.ubifs_info* %28, i32 %32)
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %35 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %36 = call i32 @ubifs_validate_entry(%struct.ubifs_info* %34, %struct.ubifs_dent_node* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = call i32 (...) @dump_stack()
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %42 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %10, align 8
  %43 = call i32 @ubifs_dump_node(%struct.ubifs_info* %41, %struct.ubifs_dent_node* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %59

45:                                               ; preds = %3
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %48 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @GFP_NOFS, align 4
  %51 = call i8* @kmemdup(i8* %46, i64 %49, i32 %50)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %59

55:                                               ; preds = %45
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %58 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %54, %39
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @is_hash_key(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_validate_entry(%struct.ubifs_info*, %struct.ubifs_dent_node*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.ubifs_dent_node*) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
