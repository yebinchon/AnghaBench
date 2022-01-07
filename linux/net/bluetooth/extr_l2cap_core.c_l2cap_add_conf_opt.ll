; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_add_conf_opt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_add_conf_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conf_opt = type { i64, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"type 0x%2.2x len %u val 0x%lx\00", align 1
@L2CAP_CONF_OPT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i64, i64, i64, i64)* @l2cap_add_conf_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_add_conf_opt(i8** %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.l2cap_conf_opt*, align 8
  store i8** %0, i8*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.l2cap_conf_opt*
  store %struct.l2cap_conf_opt* %14, %struct.l2cap_conf_opt** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %16, i64 %17)
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @L2CAP_CONF_OPT_SIZE, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %66

25:                                               ; preds = %5
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %11, align 8
  %28 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %11, align 8
  %31 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  switch i64 %32, label %51 [
    i64 1, label %33
    i64 2, label %39
    i64 4, label %45
  ]

33:                                               ; preds = %25
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %11, align 8
  %36 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  store i64 %34, i64* %38, align 8
  br label %59

39:                                               ; preds = %25
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %11, align 8
  %42 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @put_unaligned_le16(i64 %40, i64 %43)
  br label %59

45:                                               ; preds = %25
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %11, align 8
  %48 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @put_unaligned_le32(i64 %46, i64 %49)
  br label %59

51:                                               ; preds = %25
  %52 = load %struct.l2cap_conf_opt*, %struct.l2cap_conf_opt** %11, align 8
  %53 = getelementptr inbounds %struct.l2cap_conf_opt, %struct.l2cap_conf_opt* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @memcpy(i64 %54, i8* %56, i64 %57)
  br label %59

59:                                               ; preds = %51, %45, %39, %33
  %60 = load i64, i64* @L2CAP_CONF_OPT_SIZE, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %60, %61
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr i8, i8* %64, i64 %62
  store i8* %65, i8** %63, align 8
  br label %66

66:                                               ; preds = %59, %24
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64, i64, i64) #1

declare dso_local i32 @put_unaligned_le16(i64, i64) #1

declare dso_local i32 @put_unaligned_le32(i64, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
