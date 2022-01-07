; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_hash_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_hash_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.shash_desc = type { i32 }
%struct.ubifs_ch = type { i64, i32 }

@UBIFS_NODE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32, %struct.shash_desc*)* @ubifs_hash_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_hash_nodes(%struct.ubifs_info* %0, i8* %1, i32 %2, %struct.shash_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.shash_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_ch*, align 8
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.shash_desc* %3, %struct.shash_desc** %9, align 8
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %15 = call i32 @ubifs_auth_node_sz(%struct.ubifs_info* %14)
  store i32 %15, i32* %10, align 4
  br label %16

16:                                               ; preds = %4, %58
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %18, %struct.ubifs_ch** %12, align 8
  %19 = load %struct.ubifs_ch*, %struct.ubifs_ch** %12, align 8
  %20 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sge i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ubifs_assert(%struct.ubifs_info* %23, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %69

33:                                               ; preds = %16
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sgt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ubifs_assert(%struct.ubifs_info* %34, i32 %38)
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %41 = load %struct.ubifs_ch*, %struct.ubifs_ch** %12, align 8
  %42 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @UBIFS_NODE_MAGIC, align 4
  %45 = call i64 @cpu_to_le32(i32 %44)
  %46 = icmp eq i64 %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ubifs_assert(%struct.ubifs_info* %40, i32 %47)
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %50 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ubifs_shash_update(%struct.ubifs_info* %49, %struct.shash_desc* %50, i8* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %74

58:                                               ; preds = %33
  %59 = load i32, i32* %13, align 4
  %60 = call i64 @ALIGN(i32 %59, i32 8)
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr i8, i8* %61, i64 %60
  store i8* %62, i8** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @ALIGN(i32 %63, i32 8)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = sub nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %16

69:                                               ; preds = %32
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %73 = call i32 @ubifs_prepare_auth_node(%struct.ubifs_info* %70, i8* %71, %struct.shash_desc* %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %56
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @ubifs_auth_node_sz(%struct.ubifs_info*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ubifs_shash_update(%struct.ubifs_info*, %struct.shash_desc*, i8*, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_prepare_auth_node(%struct.ubifs_info*, i8*, %struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
