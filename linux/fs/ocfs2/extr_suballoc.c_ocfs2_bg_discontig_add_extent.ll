; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_discontig_add_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_discontig_add_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_group_desc = type { i32, i32, %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32, %struct.ocfs2_extent_rec*, i8* }
%struct.ocfs2_extent_rec = type { i8*, i32, i32 }
%struct.ocfs2_chain_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_group_desc*, %struct.ocfs2_chain_list*, i32, i32)* @ocfs2_bg_discontig_add_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_bg_discontig_add_extent(%struct.ocfs2_super* %0, %struct.ocfs2_group_desc* %1, %struct.ocfs2_chain_list* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca %struct.ocfs2_group_desc*, align 8
  %8 = alloca %struct.ocfs2_chain_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  %12 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store %struct.ocfs2_group_desc* %1, %struct.ocfs2_group_desc** %7, align 8
  store %struct.ocfs2_chain_list* %2, %struct.ocfs2_chain_list** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %14 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %13, i32 0, i32 2
  store %struct.ocfs2_extent_list* %14, %struct.ocfs2_extent_list** %11, align 8
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %16 = call i32 @ocfs2_supports_discontig_bg(%struct.ocfs2_super* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %5
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ocfs2_extent_recs_per_gd(i32 %28)
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %25, %5
  %34 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %34, i32 0, i32 1
  %36 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %35, align 8
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %36, i64 %41
  store %struct.ocfs2_extent_rec* %42, %struct.ocfs2_extent_rec** %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cpu_to_le64(i32 %43)
  %45 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %8, align 8
  %52 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = udiv i32 %50, %54
  %56 = call i32 @cpu_to_le32(i32 %55)
  %57 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %58 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %12, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %64 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %8, align 8
  %67 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  %70 = mul i32 %65, %69
  %71 = call i32 @le16_add_cpu(i32* %64, i32 %70)
  %72 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %73 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %8, align 8
  %76 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = mul i32 %74, %78
  %80 = call i32 @le16_add_cpu(i32* %73, i32 %79)
  %81 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %82 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %81, i32 0, i32 0
  %83 = call i32 @le16_add_cpu(i32* %82, i32 1)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_supports_discontig_bg(%struct.ocfs2_super*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_extent_recs_per_gd(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
