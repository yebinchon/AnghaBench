; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_xdr_encode_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs2xdr.c_xdr_encode_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.timespec*)* @xdr_encode_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xdr_encode_time(i32* %0, %struct.timespec* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timespec*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %5 = load %struct.timespec*, %struct.timespec** %4, align 8
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @cpu_to_be32(i32 %7)
  %9 = ptrtoint i8* %8 to i32
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %3, align 8
  store i32 %9, i32* %10, align 4
  %12 = load %struct.timespec*, %struct.timespec** %4, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.timespec*, %struct.timespec** %4, align 8
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NSEC_PER_USEC, align 4
  %21 = sdiv i32 %19, %20
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %3, align 8
  store i32 %23, i32* %24, align 4
  br label %31

26:                                               ; preds = %2
  %27 = call i8* @cpu_to_be32(i32 0)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  br label %31

31:                                               ; preds = %26, %16
  %32 = load i32*, i32** %3, align 8
  ret i32* %32
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
