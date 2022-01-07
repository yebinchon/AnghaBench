; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_xen_9pfs_front_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_xen.c_xen_9pfs_front_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_9pfs_front_priv = type { i32, i64, %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv*, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }

@xen_9pfs_lock = common dso_local global i32 0, align 4
@XEN_9PFS_RING_ORDER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@XEN_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_9pfs_front_priv*)* @xen_9pfs_front_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_9pfs_front_free(%struct.xen_9pfs_front_priv* %0) #0 {
  %2 = alloca %struct.xen_9pfs_front_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xen_9pfs_front_priv* %0, %struct.xen_9pfs_front_priv** %2, align 8
  %6 = call i32 @write_lock(i32* @xen_9pfs_lock)
  %7 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %8 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %7, i32 0, i32 8
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @write_unlock(i32* @xen_9pfs_lock)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %125, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %14 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %128

17:                                               ; preds = %11
  %18 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %19 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %18, i32 0, i32 3
  %20 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %20, i64 %22
  %24 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %128

28:                                               ; preds = %17
  %29 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %30 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %29, i32 0, i32 3
  %31 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %31, i64 %33
  %35 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %28
  %39 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %40 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %39, i32 0, i32 3
  %41 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %41, i64 %43
  %45 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %48 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @unbind_from_irqhandler(i64 %46, i32 %49)
  br label %51

51:                                               ; preds = %38, %28
  %52 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %53 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %52, i32 0, i32 3
  %54 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %54, i64 %56
  %58 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %105

62:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @XEN_9PFS_RING_ORDER, align 4
  %66 = shl i32 1, %65
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %70 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %69, i32 0, i32 3
  %71 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %71, i64 %73
  %75 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %74, i32 0, i32 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @gnttab_end_foreign_access(i32 %83, i32 0, i32 0)
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %63

88:                                               ; preds = %63
  %89 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %90 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %89, i32 0, i32 3
  %91 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %91, i64 %93
  %95 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @XEN_9PFS_RING_ORDER, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @PAGE_SHIFT, align 8
  %101 = load i64, i64* @XEN_PAGE_SHIFT, align 8
  %102 = sub nsw i64 %100, %101
  %103 = sub nsw i64 %99, %102
  %104 = call i32 @free_pages(i64 %97, i64 %103)
  br label %105

105:                                              ; preds = %88, %51
  %106 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %107 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %106, i32 0, i32 3
  %108 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %108, i64 %110
  %112 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @gnttab_end_foreign_access(i32 %113, i32 0, i32 0)
  %115 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %116 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %115, i32 0, i32 3
  %117 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %116, align 8
  %118 = load i32, i32* %3, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %117, i64 %119
  %121 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %120, i32 0, i32 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = ptrtoint %struct.TYPE_4__* %122 to i64
  %124 = call i32 @free_page(i64 %123)
  br label %125

125:                                              ; preds = %105
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %3, align 4
  br label %11

128:                                              ; preds = %27, %11
  %129 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %130 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %129, i32 0, i32 3
  %131 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %130, align 8
  %132 = call i32 @kfree(%struct.xen_9pfs_front_priv* %131)
  %133 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %134 = getelementptr inbounds %struct.xen_9pfs_front_priv, %struct.xen_9pfs_front_priv* %133, i32 0, i32 2
  %135 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %134, align 8
  %136 = call i32 @kfree(%struct.xen_9pfs_front_priv* %135)
  %137 = load %struct.xen_9pfs_front_priv*, %struct.xen_9pfs_front_priv** %2, align 8
  %138 = call i32 @kfree(%struct.xen_9pfs_front_priv* %137)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @unbind_from_irqhandler(i64, i32) #1

declare dso_local i32 @gnttab_end_foreign_access(i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i64) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.xen_9pfs_front_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
