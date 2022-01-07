; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.l2tp_tunnel_cfg = type { i32, i32 }
%struct.l2tp_tunnel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@L2TP_ENCAPTYPE_UDP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@L2TP_DEFAULT_DEBUG_FLAGS = common dso_local global i32 0, align 4
@L2TP_TUNNEL_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tunl %u\00", align 1
@l2tp_tunnel_del_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2tp_tunnel_create(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.l2tp_tunnel_cfg* %5, %struct.l2tp_tunnel** %6) #0 {
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.l2tp_tunnel_cfg*, align 8
  %14 = alloca %struct.l2tp_tunnel**, align 8
  %15 = alloca %struct.l2tp_tunnel*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.l2tp_tunnel_cfg* %5, %struct.l2tp_tunnel_cfg** %13, align 8
  store %struct.l2tp_tunnel** %6, %struct.l2tp_tunnel*** %14, align 8
  store %struct.l2tp_tunnel* null, %struct.l2tp_tunnel** %15, align 8
  %18 = load i32, i32* @L2TP_ENCAPTYPE_UDP, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.l2tp_tunnel_cfg*, %struct.l2tp_tunnel_cfg** %13, align 8
  %20 = icmp ne %struct.l2tp_tunnel_cfg* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load %struct.l2tp_tunnel_cfg*, %struct.l2tp_tunnel_cfg** %13, align 8
  %23 = getelementptr inbounds %struct.l2tp_tunnel_cfg, %struct.l2tp_tunnel_cfg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  br label %25

25:                                               ; preds = %21, %7
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.l2tp_tunnel* @kzalloc(i32 64, i32 %26)
  store %struct.l2tp_tunnel* %27, %struct.l2tp_tunnel** %15, align 8
  %28 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %29 = icmp eq %struct.l2tp_tunnel* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %16, align 4
  br label %85

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %36 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %39 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %42 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @L2TP_DEFAULT_DEBUG_FLAGS, align 4
  %44 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %45 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @L2TP_TUNNEL_MAGIC, align 4
  %47 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %48 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %50 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %49, i32 0, i32 11
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @sprintf(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %56 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %55, i32 0, i32 10
  %57 = call i32 @rwlock_init(i32* %56)
  %58 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %59 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load %struct.l2tp_tunnel_cfg*, %struct.l2tp_tunnel_cfg** %13, align 8
  %61 = icmp ne %struct.l2tp_tunnel_cfg* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %33
  %63 = load %struct.l2tp_tunnel_cfg*, %struct.l2tp_tunnel_cfg** %13, align 8
  %64 = getelementptr inbounds %struct.l2tp_tunnel_cfg, %struct.l2tp_tunnel_cfg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %67 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %33
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %71 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %73 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %72, i32 0, i32 8
  %74 = call i32 @refcount_set(i32* %73, i32 1)
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %77 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %79 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %78, i32 0, i32 7
  %80 = load i32, i32* @l2tp_tunnel_del_work, align 4
  %81 = call i32 @INIT_WORK(i32* %79, i32 %80)
  %82 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %83 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %82, i32 0, i32 6
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %68, %30
  %86 = load %struct.l2tp_tunnel**, %struct.l2tp_tunnel*** %14, align 8
  %87 = icmp ne %struct.l2tp_tunnel** %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %15, align 8
  %90 = load %struct.l2tp_tunnel**, %struct.l2tp_tunnel*** %14, align 8
  store %struct.l2tp_tunnel* %89, %struct.l2tp_tunnel** %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %16, align 4
  ret i32 %92
}

declare dso_local %struct.l2tp_tunnel* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
