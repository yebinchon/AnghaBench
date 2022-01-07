; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_rpcbind_set_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_rpcbind_set_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.svc_program = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"svc: svc_register(%sv%d, %s, %u, %u)\0A\00", align 1
@IPPROTO_UDP = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rpcbind_set_version(%struct.net* %0, %struct.svc_program* %1, i32 %2, i32 %3, i16 zeroext %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.svc_program*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.svc_program* %1, %struct.svc_program** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i16 %4, i16* %11, align 2
  store i16 %5, i16* %12, align 2
  %13 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %14 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i16, i16* %11, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @IPPROTO_UDP, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i16, i16* %12, align 2
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i8* %23, i16 zeroext %24, i32 %25)
  %27 = load %struct.net*, %struct.net** %7, align 8
  %28 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %29 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.svc_program*, %struct.svc_program** %8, align 8
  %32 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i16, i16* %11, align 2
  %37 = load i16, i16* %12, align 2
  %38 = call i32 @__svc_register(%struct.net* %27, i32 %30, i32 %33, i32 %34, i32 %35, i16 zeroext %36, i16 zeroext %37)
  ret i32 %38
}

declare dso_local i32 @dprintk(i8*, i32, i32, i8*, i16 zeroext, i32) #1

declare dso_local i32 @__svc_register(%struct.net*, i32, i32, i32, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
