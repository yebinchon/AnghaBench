; ModuleID = '/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_cyc_complexity_plugin.c_cyc_complexity_execute.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/gcc-plugins/extr_cyc_complexity_plugin.c_cyc_complexity_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@cfun = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cyclomatic Complexity %d %s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cyc_complexity_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyc_complexity_execute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = load i32, i32* @cfun, align 4
  %5 = call i32 @n_edges_for_fn(i32 %4)
  %6 = load i32, i32* @cfun, align 4
  %7 = call i32 @n_basic_blocks_for_fn(i32 %6)
  %8 = sub nsw i32 %5, %7
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @current_function_decl, align 4
  %11 = call i32 @DECL_SOURCE_LOCATION(i32 %10)
  %12 = call i8* @expand_location(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = bitcast %struct.TYPE_3__* %2 to i8*
  %15 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %1, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @current_function_decl, align 4
  %21 = call i8* @DECL_NAME_POINTER(i32 %20)
  %22 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %19, i8* %21)
  ret i32 0
}

declare dso_local i32 @n_edges_for_fn(i32) #1

declare dso_local i32 @n_basic_blocks_for_fn(i32) #1

declare dso_local i8* @expand_location(i32) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i8*) #1

declare dso_local i8* @DECL_NAME_POINTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
