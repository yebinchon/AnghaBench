; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_ubifs_enable_encryption.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_ubifs_enable_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, i64, %struct.ubifs_sb_node* }
%struct.ubifs_sb_node = type { i32 }

@CONFIG_FS_ENCRYPTION = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"on-flash format version 5 is needed for encryption\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBIFS_FLG_ENCRYPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_enable_encryption(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_sb_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 4
  %8 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %7, align 8
  store %struct.ubifs_sb_node* %8, %struct.ubifs_sb_node** %5, align 8
  %9 = load i32, i32* @CONFIG_FS_ENCRYPTION, align 4
  %10 = call i32 @IS_ENABLED(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %61

21:                                               ; preds = %15
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @EROFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %61

34:                                               ; preds = %26
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = call i32 @ubifs_err(%struct.ubifs_info* %40, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %61

44:                                               ; preds = %34
  %45 = load i32, i32* @UBIFS_FLG_ENCRYPTION, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %48 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %52 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %53 = call i32 @ubifs_write_sb_node(%struct.ubifs_info* %51, %struct.ubifs_sb_node* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %44
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %39, %31, %20, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ubifs_write_sb_node(%struct.ubifs_info*, %struct.ubifs_sb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
