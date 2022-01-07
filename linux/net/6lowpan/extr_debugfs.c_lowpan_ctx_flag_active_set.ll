; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_ctx_flag_active_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_debugfs.c_lowpan_ctx_flag_active_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_iphc_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOWPAN_IPHC_CTX_FLAG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @lowpan_ctx_flag_active_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_ctx_flag_active_set(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lowpan_iphc_ctx*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.lowpan_iphc_ctx*
  store %struct.lowpan_iphc_ctx* %8, %struct.lowpan_iphc_ctx** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* @LOWPAN_IPHC_CTX_FLAG_ACTIVE, align 4
  %22 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  br label %30

25:                                               ; preds = %17
  %26 = load i32, i32* @LOWPAN_IPHC_CTX_FLAG_ACTIVE, align 4
  %27 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %27, i32 0, i32 0
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
