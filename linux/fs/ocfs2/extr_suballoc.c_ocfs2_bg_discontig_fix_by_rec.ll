; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_discontig_fix_by_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_discontig_fix_by_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_suballoc_result = type { i32, i32, i32 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.ocfs2_chain_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_suballoc_result*, %struct.ocfs2_extent_rec*, %struct.ocfs2_chain_list*)* @ocfs2_bg_discontig_fix_by_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_bg_discontig_fix_by_rec(%struct.ocfs2_suballoc_result* %0, %struct.ocfs2_extent_rec* %1, %struct.ocfs2_chain_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_suballoc_result*, align 8
  %6 = alloca %struct.ocfs2_extent_rec*, align 8
  %7 = alloca %struct.ocfs2_chain_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocfs2_suballoc_result* %0, %struct.ocfs2_suballoc_result** %5, align 8
  store %struct.ocfs2_extent_rec* %1, %struct.ocfs2_extent_rec** %6, align 8
  store %struct.ocfs2_chain_list* %2, %struct.ocfs2_chain_list** %7, align 8
  %11 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %7, align 8
  %12 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = mul i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = mul i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

33:                                               ; preds = %3
  %34 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %35 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %37, %38
  %40 = icmp uge i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %77

42:                                               ; preds = %33
  %43 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le64_to_cpu(i32 %45)
  %47 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %49, %50
  %52 = add i32 %46, %51
  %53 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %56 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %59 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %57, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add i32 %62, %63
  %65 = icmp ugt i32 %61, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %42
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %67, %68
  %70 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub i32 %69, %72
  %74 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %5, align 8
  %75 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %66, %42
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %41, %32
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
