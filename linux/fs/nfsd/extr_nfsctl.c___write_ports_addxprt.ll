; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___write_ports_addxprt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___write_ports_addxprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cred = type { i32 }
%struct.svc_xprt = type { i32 }
%struct.nfsd_net = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%15s %5u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SVC_SOCK_ANONYMOUS = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.net*, %struct.cred*)* @__write_ports_addxprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_ports_addxprt(i8* %0, %struct.net* %1, %struct.cred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca %struct.svc_xprt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfsd_net*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store %struct.cred* %2, %struct.cred** %7, align 8
  %13 = load %struct.net*, %struct.net** %6, align 8
  %14 = load i32, i32* @nfsd_net_id, align 4
  %15 = call %struct.nfsd_net* @net_generic(%struct.net* %13, i32 %14)
  store %struct.nfsd_net* %15, %struct.nfsd_net** %12, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %18 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %17, i32* %10)
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %101

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @USHRT_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %101

33:                                               ; preds = %26
  %34 = load %struct.net*, %struct.net** %6, align 8
  %35 = call i32 @nfsd_create_serv(%struct.net* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %101

40:                                               ; preds = %33
  %41 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %42 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %45 = load %struct.net*, %struct.net** %6, align 8
  %46 = load i32, i32* @PF_INET, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %49 = load %struct.cred*, %struct.cred** %7, align 8
  %50 = call i32 @svc_create_xprt(%struct.TYPE_3__* %43, i8* %44, %struct.net* %45, i32 %46, i32 %47, i32 %48, %struct.cred* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %97

54:                                               ; preds = %40
  %55 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %56 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %59 = load %struct.net*, %struct.net** %6, align 8
  %60 = load i32, i32* @PF_INET6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %63 = load %struct.cred*, %struct.cred** %7, align 8
  %64 = call i32 @svc_create_xprt(%struct.TYPE_3__* %57, i8* %58, %struct.net* %59, i32 %60, i32 %61, i32 %62, %struct.cred* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @EAFNOSUPPORT, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %80

73:                                               ; preds = %67, %54
  %74 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %75 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %101

80:                                               ; preds = %72
  %81 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %82 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %85 = load %struct.net*, %struct.net** %6, align 8
  %86 = load i32, i32* @PF_INET, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call %struct.svc_xprt* @svc_find_xprt(%struct.TYPE_3__* %83, i8* %84, %struct.net* %85, i32 %86, i32 %87)
  store %struct.svc_xprt* %88, %struct.svc_xprt** %9, align 8
  %89 = load %struct.svc_xprt*, %struct.svc_xprt** %9, align 8
  %90 = icmp ne %struct.svc_xprt* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %80
  %92 = load %struct.svc_xprt*, %struct.svc_xprt** %9, align 8
  %93 = call i32 @svc_close_xprt(%struct.svc_xprt* %92)
  %94 = load %struct.svc_xprt*, %struct.svc_xprt** %9, align 8
  %95 = call i32 @svc_xprt_put(%struct.svc_xprt* %94)
  br label %96

96:                                               ; preds = %91, %80
  br label %97

97:                                               ; preds = %96, %53
  %98 = load %struct.net*, %struct.net** %6, align 8
  %99 = call i32 @nfsd_destroy(%struct.net* %98)
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %73, %38, %30, %20
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @nfsd_create_serv(%struct.net*) #1

declare dso_local i32 @svc_create_xprt(%struct.TYPE_3__*, i8*, %struct.net*, i32, i32, i32, %struct.cred*) #1

declare dso_local %struct.svc_xprt* @svc_find_xprt(%struct.TYPE_3__*, i8*, %struct.net*, i32, i32) #1

declare dso_local i32 @svc_close_xprt(%struct.svc_xprt*) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

declare dso_local i32 @nfsd_destroy(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
