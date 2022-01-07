; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_splice.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.smc_sock = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.splice_pipe_desc = type { i32, i32, i32, i32*, %struct.partial_page*, i32* }
%struct.partial_page = type { i32, i64, i64 }
%struct.smc_spd_priv = type { i64, %struct.smc_sock* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smc_pipe_ops = common dso_local global i32 0, align 4
@smc_rx_spd_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, i8*, i64, %struct.smc_sock*)* @smc_rx_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_rx_splice(%struct.pipe_inode_info* %0, i8* %1, i64 %2, %struct.smc_sock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.smc_sock*, align 8
  %10 = alloca %struct.splice_pipe_desc, align 8
  %11 = alloca %struct.partial_page, align 8
  %12 = alloca %struct.smc_spd_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.smc_sock* %3, %struct.smc_sock** %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.smc_spd_priv* @kzalloc(i32 16, i32 %14)
  store %struct.smc_spd_priv* %15, %struct.smc_spd_priv** %12, align 8
  %16 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %12, align 8
  %17 = icmp ne %struct.smc_spd_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %80

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %12, align 8
  %24 = getelementptr inbounds %struct.smc_spd_priv, %struct.smc_spd_priv* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %26 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %12, align 8
  %27 = getelementptr inbounds %struct.smc_spd_priv, %struct.smc_spd_priv* %26, i32 0, i32 1
  store %struct.smc_sock* %25, %struct.smc_sock** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %30 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = ptrtoint i8* %28 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %11, i32 0, i32 1
  store i64 %41, i64* %42, align 8
  %43 = load %struct.smc_spd_priv*, %struct.smc_spd_priv** %12, align 8
  %44 = ptrtoint %struct.smc_spd_priv* %43 to i64
  %45 = getelementptr inbounds %struct.partial_page, %struct.partial_page* %11, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %10, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %10, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %49 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %10, i32 0, i32 5
  store i32* %52, i32** %53, align 8
  %54 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %10, i32 0, i32 4
  store %struct.partial_page* %11, %struct.partial_page** %54, align 8
  %55 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %10, i32 0, i32 3
  store i32* @smc_pipe_ops, i32** %55, align 8
  %56 = load i32, i32* @smc_rx_spd_release, align 4
  %57 = getelementptr inbounds %struct.splice_pipe_desc, %struct.splice_pipe_desc* %10, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %59 = call i32 @splice_to_pipe(%struct.pipe_inode_info* %58, %struct.splice_pipe_desc* %10)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %21
  %63 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %64 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %63, i32 0, i32 1
  %65 = call i32 @sock_hold(i32* %64)
  %66 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %67 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @get_page(i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.smc_sock*, %struct.smc_sock** %9, align 8
  %75 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @atomic_add(i32 %73, i32* %76)
  br label %78

78:                                               ; preds = %62, %21
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.smc_spd_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @splice_to_pipe(%struct.pipe_inode_info*, %struct.splice_pipe_desc*) #1

declare dso_local i32 @sock_hold(i32*) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
