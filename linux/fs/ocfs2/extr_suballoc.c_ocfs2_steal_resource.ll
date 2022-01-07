; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_steal_resource.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_steal_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_alloc_context = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@NOT_ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32)* @ocfs2_steal_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_steal_resource(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca %struct.ocfs2_alloc_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @ENOSPC, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @__ocfs2_get_steal_slot(%struct.ocfs2_super* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %18, %3
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %27 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %33 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %40 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %61

44:                                               ; preds = %37
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %46 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @NOT_ALLOC_NEW_GROUP, align 4
  %50 = call i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %45, %struct.ocfs2_alloc_context* %46, i32 %47, i32 %48, i32* null, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @__ocfs2_set_steal_slot(%struct.ocfs2_super* %54, i32 %55, i32 %56)
  br label %66

58:                                               ; preds = %44
  %59 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %5, align 8
  %60 = call i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context* %59)
  br label %61

61:                                               ; preds = %58, %43
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %24

66:                                               ; preds = %53, %24
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @__ocfs2_get_steal_slot(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @__ocfs2_set_steal_slot(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
