; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_opt_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_opt_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"toggle option: %d state: %d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_opt_toggle(%struct.net_bridge* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @br_opt_get(%struct.net_bridge* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @br_debug(%struct.net_bridge* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %37

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %35 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %23, %32, %27
  ret void
}

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
