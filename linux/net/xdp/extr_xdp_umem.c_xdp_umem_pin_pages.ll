; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_pin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xdp_umem = type { i64, i32*, i32 }

@FOLL_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@FOLL_LONGTERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_umem*)* @xdp_umem_pin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_umem_pin_pages(%struct.xdp_umem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_umem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xdp_umem* %0, %struct.xdp_umem** %3, align 8
  %7 = load i32, i32* @FOLL_WRITE, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %9 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @__GFP_NOWARN, align 4
  %13 = or i32 %11, %12
  %14 = call i32* @kcalloc(i64 %10, i32 4, i32 %13)
  %15 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %16 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %18 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  %30 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %31 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %34 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FOLL_LONGTERM, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %40 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = call i64 @get_user_pages(i32 %32, i64 %35, i32 %38, i32* %42, i32* null)
  store i64 %43, i64* %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @up_read(i32* %47)
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %51 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %24
  %55 = load i64, i64* %5, align 8
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %60 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load i64, i64* %5, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %78

67:                                               ; preds = %57
  %68 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %69 = call i32 @xdp_umem_unpin_pages(%struct.xdp_umem* %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %72 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %76 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %70, %66, %21
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @get_user_pages(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @xdp_umem_unpin_pages(%struct.xdp_umem*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
