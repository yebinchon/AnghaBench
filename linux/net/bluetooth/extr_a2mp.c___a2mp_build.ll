; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c___a2mp_build.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c___a2mp_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2mp_cmd = type { i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.a2mp_cmd* (i8*, i8*, i32, i8*)* @__a2mp_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.a2mp_cmd* @__a2mp_build(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.a2mp_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.a2mp_cmd*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 24, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.a2mp_cmd* @kzalloc(i32 %16, i32 %17)
  store %struct.a2mp_cmd* %18, %struct.a2mp_cmd** %10, align 8
  %19 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %10, align 8
  %20 = icmp ne %struct.a2mp_cmd* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store %struct.a2mp_cmd* null, %struct.a2mp_cmd** %5, align 8
  br label %40

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %10, align 8
  %25 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %10, align 8
  %32 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %10, align 8
  %34 = getelementptr inbounds %struct.a2mp_cmd, %struct.a2mp_cmd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @memcpy(i32 %35, i8* %36, i32 %37)
  %39 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %10, align 8
  store %struct.a2mp_cmd* %39, %struct.a2mp_cmd** %5, align 8
  br label %40

40:                                               ; preds = %22, %21
  %41 = load %struct.a2mp_cmd*, %struct.a2mp_cmd** %5, align 8
  ret %struct.a2mp_cmd* %41
}

declare dso_local %struct.a2mp_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
