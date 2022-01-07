; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_make_flow_keys_digest.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_dissector.c_make_flow_keys_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_keys_digest = type { i32 }
%struct.flow_keys = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct._flow_keys_digest_data = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_flow_keys_digest(%struct.flow_keys_digest* %0, %struct.flow_keys* %1) #0 {
  %3 = alloca %struct.flow_keys_digest*, align 8
  %4 = alloca %struct.flow_keys*, align 8
  %5 = alloca %struct._flow_keys_digest_data*, align 8
  store %struct.flow_keys_digest* %0, %struct.flow_keys_digest** %3, align 8
  store %struct.flow_keys* %1, %struct.flow_keys** %4, align 8
  %6 = load %struct.flow_keys_digest*, %struct.flow_keys_digest** %3, align 8
  %7 = bitcast %struct.flow_keys_digest* %6 to %struct._flow_keys_digest_data*
  store %struct._flow_keys_digest_data* %7, %struct._flow_keys_digest_data** %5, align 8
  %8 = call i32 @BUILD_BUG_ON(i32 1)
  %9 = load %struct.flow_keys_digest*, %struct.flow_keys_digest** %3, align 8
  %10 = call i32 @memset(%struct.flow_keys_digest* %9, i32 0, i32 4)
  %11 = load %struct.flow_keys*, %struct.flow_keys** %4, align 8
  %12 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct._flow_keys_digest_data*, %struct._flow_keys_digest_data** %5, align 8
  %16 = getelementptr inbounds %struct._flow_keys_digest_data, %struct._flow_keys_digest_data* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.flow_keys*, %struct.flow_keys** %4, align 8
  %18 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct._flow_keys_digest_data*, %struct._flow_keys_digest_data** %5, align 8
  %22 = getelementptr inbounds %struct._flow_keys_digest_data, %struct._flow_keys_digest_data* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.flow_keys*, %struct.flow_keys** %4, align 8
  %24 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct._flow_keys_digest_data*, %struct._flow_keys_digest_data** %5, align 8
  %28 = getelementptr inbounds %struct._flow_keys_digest_data, %struct._flow_keys_digest_data* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.flow_keys*, %struct.flow_keys** %4, align 8
  %30 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct._flow_keys_digest_data*, %struct._flow_keys_digest_data** %5, align 8
  %35 = getelementptr inbounds %struct._flow_keys_digest_data, %struct._flow_keys_digest_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.flow_keys*, %struct.flow_keys** %4, align 8
  %37 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct._flow_keys_digest_data*, %struct._flow_keys_digest_data** %5, align 8
  %42 = getelementptr inbounds %struct._flow_keys_digest_data, %struct._flow_keys_digest_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.flow_keys_digest*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
