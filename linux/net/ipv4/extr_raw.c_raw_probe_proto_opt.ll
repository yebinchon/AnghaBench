; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_probe_proto_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_probe_proto_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_frag_vec = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.flowi4 = type { i64, i32, i32 }

@IPPROTO_ICMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw_frag_vec*, %struct.flowi4*)* @raw_probe_proto_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_probe_proto_opt(%struct.raw_frag_vec* %0, %struct.flowi4* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raw_frag_vec*, align 8
  %5 = alloca %struct.flowi4*, align 8
  %6 = alloca i32, align 4
  store %struct.raw_frag_vec* %0, %struct.raw_frag_vec** %4, align 8
  store %struct.flowi4* %1, %struct.flowi4** %5, align 8
  %7 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %8 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IPPROTO_ICMP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %4, align 8
  %15 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  %16 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %4, align 8
  %17 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %4, align 8
  %21 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %4, align 8
  %24 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy_from_msg(i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %13
  %32 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %4, align 8
  %33 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %38 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.raw_frag_vec*, %struct.raw_frag_vec** %4, align 8
  %40 = getelementptr inbounds %struct.raw_frag_vec, %struct.raw_frag_vec* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %45 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %31, %29, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @memcpy_from_msg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
