; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_generic_rpcbind_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_generic_rpcbind_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.svc_program = type { i32, %struct.svc_version** }
%struct.svc_version = type { i64, i64, i64 }

@.str = private unnamed_addr constant [64 x i8] c"svc: svc_register(%sv%d, %s, %u, %u) (but not telling portmap)\0A\00", align 1
@IPPROTO_UDP = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_generic_rpcbind_set(%struct.net* %0, %struct.svc_program* %1, i64 %2, i32 %3, i16 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.svc_program*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca %struct.svc_version*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.svc_program* %1, %struct.svc_program** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i16 %5, i16* %13, align 2
  %16 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %17 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %16, i32 0, i32 1
  %18 = load %struct.svc_version**, %struct.svc_version*** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.svc_version*, %struct.svc_version** %18, i64 %19
  %21 = load %struct.svc_version*, %struct.svc_version** %20, align 8
  store %struct.svc_version* %21, %struct.svc_version** %14, align 8
  %22 = load %struct.svc_version*, %struct.svc_version** %14, align 8
  %23 = icmp eq %struct.svc_version* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %74

25:                                               ; preds = %6
  %26 = load %struct.svc_version*, %struct.svc_version** %14, align 8
  %27 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %32 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i16, i16* %12, align 2
  %36 = zext i16 %35 to i32
  %37 = load i16, i16* @IPPROTO_UDP, align 2
  %38 = zext i16 %37 to i32
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i16, i16* %13, align 2
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %34, i8* %41, i16 zeroext %42, i32 %43)
  store i32 0, i32* %7, align 4
  br label %74

45:                                               ; preds = %25
  %46 = load %struct.svc_version*, %struct.svc_version** %14, align 8
  %47 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i16, i16* %12, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @IPPROTO_UDP, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %74

57:                                               ; preds = %50, %45
  %58 = load %struct.net*, %struct.net** %8, align 8
  %59 = load %struct.svc_program*, %struct.svc_program** %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i16, i16* %12, align 2
  %63 = load i16, i16* %13, align 2
  %64 = call i32 @svc_rpcbind_set_version(%struct.net* %58, %struct.svc_program* %59, i64 %60, i32 %61, i16 zeroext %62, i16 zeroext %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.svc_version*, %struct.svc_version** %14, align 8
  %66 = getelementptr inbounds %struct.svc_version, %struct.svc_version* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %15, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ 0, %69 ], [ %71, %70 ]
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %56, %30, %24
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @dprintk(i8*, i32, i64, i8*, i16 zeroext, i32) #1

declare dso_local i32 @svc_rpcbind_set_version(%struct.net*, %struct.svc_program*, i64, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
