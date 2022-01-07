; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c___ceph_monc_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_mon_client.c___ceph_monc_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mon_generic_request = type { i32, %struct.TYPE_4__*, i32, i32, i8* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.ceph_mon_client = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@CEPH_MSG_MON_GET_VERSION = common dso_local global i32 0, align 4
@CEPH_MSG_MON_GET_VERSION_REPLY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_mon_generic_request* (%struct.ceph_mon_client*, i8*, i32, i32)* @__ceph_monc_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_mon_generic_request* @__ceph_monc_get_version(%struct.ceph_mon_client* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ceph_mon_generic_request*, align 8
  %6 = alloca %struct.ceph_mon_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_mon_generic_request*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ceph_mon_client* %0, %struct.ceph_mon_client** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %6, align 8
  %14 = load i32, i32* @GFP_NOIO, align 4
  %15 = call %struct.ceph_mon_generic_request* @alloc_generic_request(%struct.ceph_mon_client* %13, i32 %14)
  store %struct.ceph_mon_generic_request* %15, %struct.ceph_mon_generic_request** %10, align 8
  %16 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %17 = icmp ne %struct.ceph_mon_generic_request* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %94

19:                                               ; preds = %4
  %20 = load i32, i32* @CEPH_MSG_MON_GET_VERSION, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = sext i32 %22 to i64
  %24 = add i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call i8* @ceph_msg_new(i32 %20, i32 %25, i32 %26, i32 1)
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  %29 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %30 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %29, i32 0, i32 1
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %32 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %19
  br label %94

36:                                               ; preds = %19
  %37 = load i32, i32* @CEPH_MSG_MON_GET_VERSION_REPLY, align 4
  %38 = load i32, i32* @GFP_NOIO, align 4
  %39 = call i8* @ceph_msg_new(i32 %37, i32 32, i32 %38, i32 1)
  %40 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %41 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %43 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %94

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %50 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %53 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %6, align 8
  %55 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %58 = call i32 @register_generic_request(%struct.ceph_mon_generic_request* %57)
  %59 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %60 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %67 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %65, i64 %71
  store i8* %72, i8** %12, align 8
  %73 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %74 = getelementptr inbounds %struct.ceph_mon_generic_request, %struct.ceph_mon_generic_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ceph_encode_64(i8** %11, i32 %75)
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = call i32 @ceph_encode_string(i8** %11, i8* %77, i8* %78, i32 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  %87 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %6, align 8
  %88 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %89 = call i32 @send_generic_request(%struct.ceph_mon_client* %87, %struct.ceph_mon_generic_request* %88)
  %90 = load %struct.ceph_mon_client*, %struct.ceph_mon_client** %6, align 8
  %91 = getelementptr inbounds %struct.ceph_mon_client, %struct.ceph_mon_client* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  store %struct.ceph_mon_generic_request* %93, %struct.ceph_mon_generic_request** %5, align 8
  br label %100

94:                                               ; preds = %46, %35, %18
  %95 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %10, align 8
  %96 = call i32 @put_generic_request(%struct.ceph_mon_generic_request* %95)
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  %99 = call %struct.ceph_mon_generic_request* @ERR_PTR(i32 %98)
  store %struct.ceph_mon_generic_request* %99, %struct.ceph_mon_generic_request** %5, align 8
  br label %100

100:                                              ; preds = %94, %47
  %101 = load %struct.ceph_mon_generic_request*, %struct.ceph_mon_generic_request** %5, align 8
  ret %struct.ceph_mon_generic_request* %101
}

declare dso_local %struct.ceph_mon_generic_request* @alloc_generic_request(%struct.ceph_mon_client*, i32) #1

declare dso_local i8* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @register_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local i32 @ceph_encode_64(i8**, i32) #1

declare dso_local i32 @ceph_encode_string(i8**, i8*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @send_generic_request(%struct.ceph_mon_client*, %struct.ceph_mon_generic_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_generic_request(%struct.ceph_mon_generic_request*) #1

declare dso_local %struct.ceph_mon_generic_request* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
