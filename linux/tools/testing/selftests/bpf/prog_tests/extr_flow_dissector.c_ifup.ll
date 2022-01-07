; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_flow_dissector.c_ifup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_flow_dissector.c_ifup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ifup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = bitcast %struct.ifreq* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strncpy(i32 %9, i8* %10, i32 4)
  %12 = load i32, i32* @PF_INET, align 4
  %13 = load i32, i32* @SOCK_DGRAM, align 4
  %14 = call i32 @socket(i32 %12, i32 %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SIOCGIFFLAGS, align 4
  %21 = call i32 @ioctl(i32 %19, i32 %20, %struct.ifreq* %4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @close(i32 %25)
  store i32 -1, i32* %2, align 4
  br label %43

27:                                               ; preds = %18
  %28 = load i32, i32* @IFF_UP, align 4
  %29 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SIOCSIFFLAGS, align 4
  %34 = call i32 @ioctl(i32 %32, i32 %33, %struct.ifreq* %4)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @close(i32 %38)
  store i32 -1, i32* %2, align 4
  br label %43

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @close(i32 %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %37, %24, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
