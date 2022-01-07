; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcpos_copy.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_srcpos.c_srcpos_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcpos = type { %struct.srcpos*, i32* }
%struct.srcfile_state = type { %struct.srcfile_state*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.srcpos* @srcpos_copy(%struct.srcpos* %0) #0 {
  %2 = alloca %struct.srcpos*, align 8
  %3 = alloca %struct.srcpos*, align 8
  %4 = alloca %struct.srcpos*, align 8
  %5 = alloca %struct.srcfile_state*, align 8
  store %struct.srcpos* %0, %struct.srcpos** %3, align 8
  %6 = load %struct.srcpos*, %struct.srcpos** %3, align 8
  %7 = icmp ne %struct.srcpos* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.srcpos* null, %struct.srcpos** %2, align 8
  br label %33

9:                                                ; preds = %1
  %10 = call %struct.srcpos* @xmalloc(i32 16)
  store %struct.srcpos* %10, %struct.srcpos** %4, align 8
  %11 = load %struct.srcpos*, %struct.srcpos** %3, align 8
  %12 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %18 = load %struct.srcpos*, %struct.srcpos** %3, align 8
  %19 = call i32 @memcpy(%struct.srcpos* %17, %struct.srcpos* %18, i32 16)
  %20 = call %struct.srcpos* @xmalloc(i32 16)
  %21 = bitcast %struct.srcpos* %20 to %struct.srcfile_state*
  store %struct.srcfile_state* %21, %struct.srcfile_state** %5, align 8
  %22 = load %struct.srcfile_state*, %struct.srcfile_state** %5, align 8
  %23 = bitcast %struct.srcfile_state* %22 to %struct.srcpos*
  %24 = load %struct.srcpos*, %struct.srcpos** %3, align 8
  %25 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %24, i32 0, i32 0
  %26 = load %struct.srcpos*, %struct.srcpos** %25, align 8
  %27 = call i32 @memcpy(%struct.srcpos* %23, %struct.srcpos* %26, i32 16)
  %28 = load %struct.srcfile_state*, %struct.srcfile_state** %5, align 8
  %29 = bitcast %struct.srcfile_state* %28 to %struct.srcpos*
  %30 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  %31 = getelementptr inbounds %struct.srcpos, %struct.srcpos* %30, i32 0, i32 0
  store %struct.srcpos* %29, %struct.srcpos** %31, align 8
  %32 = load %struct.srcpos*, %struct.srcpos** %4, align 8
  store %struct.srcpos* %32, %struct.srcpos** %2, align 8
  br label %33

33:                                               ; preds = %9, %8
  %34 = load %struct.srcpos*, %struct.srcpos** %2, align 8
  ret %struct.srcpos* %34
}

declare dso_local %struct.srcpos* @xmalloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.srcpos*, %struct.srcpos*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
