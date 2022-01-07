; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_prepare_layoutreturn.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_prepare_layoutreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_layoutreturn_args = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.nfs4_flexfile_layoutreturn_args*, i32* }
%struct.nfs4_flexfile_layoutreturn_args = type { i32*, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_flexfile_layout = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FF_LAYOUTRETURN_MAXERR = common dso_local global i32 0, align 4
@layoutreturn_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs4_layoutreturn_args*)* @ff_layout_prepare_layoutreturn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_layout_prepare_layoutreturn(%struct.nfs4_layoutreturn_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs4_layoutreturn_args*, align 8
  %4 = alloca %struct.nfs4_flexfile_layoutreturn_args*, align 8
  %5 = alloca %struct.nfs4_flexfile_layout*, align 8
  store %struct.nfs4_layoutreturn_args* %0, %struct.nfs4_layoutreturn_args** %3, align 8
  %6 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %3, align 8
  %7 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.nfs4_flexfile_layout* @FF_LAYOUT_FROM_HDR(i32 %8)
  store %struct.nfs4_flexfile_layout* %9, %struct.nfs4_flexfile_layout** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nfs4_flexfile_layoutreturn_args* @kmalloc(i32 32, i32 %10)
  store %struct.nfs4_flexfile_layoutreturn_args* %11, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %12 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %13 = icmp ne %struct.nfs4_flexfile_layoutreturn_args* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %79

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @alloc_page(i32 %16)
  %18 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %19 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %23 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %15
  br label %76

29:                                               ; preds = %15
  %30 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %31 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %3, align 8
  %34 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %3, align 8
  %37 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %36, i32 0, i32 2
  %38 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %39 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %38, i32 0, i32 2
  %40 = load i32, i32* @FF_LAYOUTRETURN_MAXERR, align 4
  %41 = call i32 @ff_layout_fetch_ds_ioerr(i32 %35, i32* %37, i32* %39, i32 %40)
  %42 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %43 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %3, align 8
  %45 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.nfs4_flexfile_layout*, %struct.nfs4_flexfile_layout** %5, align 8
  %50 = getelementptr inbounds %struct.nfs4_flexfile_layout, %struct.nfs4_flexfile_layout* %49, i32 0, i32 0
  %51 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %52 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %56 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = call i32 @ff_layout_mirror_prepare_stats(i32* %50, i32* %54, i32 %58)
  %60 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %61 = getelementptr inbounds %struct.nfs4_flexfile_layoutreturn_args, %struct.nfs4_flexfile_layoutreturn_args* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %3, align 8
  %63 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %3, align 8
  %68 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32* @layoutreturn_ops, i32** %70, align 8
  %71 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %72 = load %struct.nfs4_layoutreturn_args*, %struct.nfs4_layoutreturn_args** %3, align 8
  %73 = getelementptr inbounds %struct.nfs4_layoutreturn_args, %struct.nfs4_layoutreturn_args* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.nfs4_flexfile_layoutreturn_args* %71, %struct.nfs4_flexfile_layoutreturn_args** %75, align 8
  store i32 0, i32* %2, align 4
  br label %82

76:                                               ; preds = %28
  %77 = load %struct.nfs4_flexfile_layoutreturn_args*, %struct.nfs4_flexfile_layoutreturn_args** %4, align 8
  %78 = call i32 @kfree(%struct.nfs4_flexfile_layoutreturn_args* %77)
  br label %79

79:                                               ; preds = %76, %14
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %29
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.nfs4_flexfile_layout* @FF_LAYOUT_FROM_HDR(i32) #1

declare dso_local %struct.nfs4_flexfile_layoutreturn_args* @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ff_layout_fetch_ds_ioerr(i32, i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ff_layout_mirror_prepare_stats(i32*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nfs4_flexfile_layoutreturn_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
