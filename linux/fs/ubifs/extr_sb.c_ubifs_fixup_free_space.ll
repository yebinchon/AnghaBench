; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_ubifs_fixup_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_ubifs_fixup_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.ubifs_sb_node* }
%struct.ubifs_sb_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"start fixing up free space\00", align 1
@UBIFS_FLG_SPACE_FIXUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"free space fixup complete\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_fixup_free_space(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_sb_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 3
  %8 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %7, align 8
  store %struct.ubifs_sb_node* %8, %struct.ubifs_sb_node** %5, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ubifs_assert(%struct.ubifs_info* %9, i32 %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubifs_assert(%struct.ubifs_info* %14, i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = call i32 @ubifs_msg(%struct.ubifs_info* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %25 = call i32 @fixup_free_space(%struct.ubifs_info* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load i32, i32* @UBIFS_FLG_SPACE_FIXUP, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = call i32 @ubifs_msg(%struct.ubifs_info* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %30, %28
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @fixup_free_space(%struct.ubifs_info*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
