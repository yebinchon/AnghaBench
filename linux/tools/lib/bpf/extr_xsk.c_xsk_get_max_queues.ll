; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_get_max_queues.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_xsk.c_xsk_get_max_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsk_socket = type { i32 }
%struct.ethtool_channels = type { i32, i32 }
%struct.ifreq = type { i8*, i8* }

@ETHTOOL_GCHANNELS = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCETHTOOL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsk_socket*)* @xsk_get_max_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsk_get_max_queues(%struct.xsk_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xsk_socket*, align 8
  %4 = alloca %struct.ethtool_channels, align 4
  %5 = alloca %struct.ifreq, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xsk_socket* %0, %struct.xsk_socket** %3, align 8
  %9 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %4, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %4, i32 0, i32 1
  %11 = load i32, i32* @ETHTOOL_GCHANNELS, align 4
  store i32 %11, i32* %10, align 4
  %12 = bitcast %struct.ifreq* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* @AF_INET, align 4
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = call i32 @socket(i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @errno, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %66

21:                                               ; preds = %1
  %22 = bitcast %struct.ethtool_channels* %4 to i8*
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.xsk_socket*, %struct.xsk_socket** %3, align 8
  %27 = getelementptr inbounds %struct.xsk_socket, %struct.xsk_socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFNAMSIZ, align 4
  %30 = sub nsw i32 %29, 1
  %31 = call i32 @memcpy(i8* %25, i32 %28, i32 %30)
  %32 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @IFNAMSIZ, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SIOCETHTOOL, align 4
  %40 = call i32 @ioctl(i32 %38, i32 %39, %struct.ifreq* %5)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %21
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @errno, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %62

50:                                               ; preds = %43, %21
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50
  store i32 1, i32* %8, align 4
  br label %61

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @close(i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
