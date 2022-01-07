; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_rpc_clnt_show_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_rpc_clnt_show_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rpc_clnt = type { i32, i32, %struct.rpc_clnt*, i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_iostats = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"\09RPC iostats version: %s  \00", align 1
@RPC_IOSTATS_VERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"p/v: %u/%u (%s)\0A\00", align 1
@do_print_stats = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"\09per-op statistics\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_clnt_show_stats(%struct.seq_file* %0, %struct.rpc_clnt* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_iostats, align 4
  %8 = alloca %struct.rpc_clnt*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.rpc_clnt* %1, %struct.rpc_clnt** %4, align 8
  %9 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %13 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %78

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load i32, i32* @RPC_IOSTATS_VERS, align 4
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %23 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %32)
  %34 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %35 = load i32, i32* @do_print_stats, align 4
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 @rpc_clnt_iterate_for_each_xprt(%struct.rpc_clnt* %34, i32 %35, %struct.seq_file* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %75, %17
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = bitcast %struct.rpc_iostats* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 4, i1 false)
  %46 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  store %struct.rpc_clnt* %46, %struct.rpc_clnt** %8, align 8
  br label %47

47:                                               ; preds = %65, %44
  %48 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %49 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @_add_rpc_iostats(%struct.rpc_iostats* %7, i32* %53)
  %55 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %56 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %57 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %56, i32 0, i32 2
  %58 = load %struct.rpc_clnt*, %struct.rpc_clnt** %57, align 8
  %59 = icmp eq %struct.rpc_clnt* %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  br label %68

61:                                               ; preds = %47
  %62 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %63 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %62, i32 0, i32 2
  %64 = load %struct.rpc_clnt*, %struct.rpc_clnt** %63, align 8
  store %struct.rpc_clnt* %64, %struct.rpc_clnt** %8, align 8
  br label %65

65:                                               ; preds = %61
  %66 = load %struct.rpc_clnt*, %struct.rpc_clnt** %8, align 8
  %67 = icmp ne %struct.rpc_clnt* %66, null
  br i1 %67, label %47, label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %72 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @_print_rpc_iostats(%struct.seq_file* %69, %struct.rpc_iostats* %7, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %40

78:                                               ; preds = %16, %40
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @rpc_clnt_iterate_for_each_xprt(%struct.rpc_clnt*, i32, %struct.seq_file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_add_rpc_iostats(%struct.rpc_iostats*, i32*) #1

declare dso_local i32 @_print_rpc_iostats(%struct.seq_file*, %struct.rpc_iostats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
