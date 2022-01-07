; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_prep_grp_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_prep_grp_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i8*, i64*, i32, i32, i8*, i8* }

@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@UBIFS_LAST_OF_NODE_GROUP = common dso_local global i32 0, align 4
@UBIFS_IN_NODE_GROUP = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_prep_grp_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_ch*, align 8
  %11 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %13, %struct.ubifs_ch** %10, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = call i64 @next_sqnum(%struct.ubifs_info* %14)
  store i64 %15, i64* %11, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @UBIFS_CH_SZ, align 4
  %19 = icmp sge i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubifs_assert(%struct.ubifs_info* %16, i32 %20)
  %22 = load i32, i32* @UBIFS_NODE_MAGIC, align 4
  %23 = call i8* @cpu_to_le32(i32 %22)
  %24 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %25 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %29 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @UBIFS_LAST_OF_NODE_GROUP, align 4
  %34 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %35 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %4
  %37 = load i32, i32* @UBIFS_IN_NODE_GROUP, align 4
  %38 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %39 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @cpu_to_le64(i64 %41)
  %43 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %44 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %46 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %50 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr i8, i8* %54, i64 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 8
  %58 = call i32 @crc32(i32 %53, i8* %55, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %62 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  ret void
}

declare dso_local i64 @next_sqnum(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @crc32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
