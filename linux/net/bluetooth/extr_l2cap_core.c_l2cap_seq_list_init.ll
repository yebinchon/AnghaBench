; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_seq_list = type { i64, i8**, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@L2CAP_SEQ_LIST_CLEAR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_seq_list*, i32)* @l2cap_seq_list_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_seq_list_init(%struct.l2cap_seq_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_seq_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.l2cap_seq_list* %0, %struct.l2cap_seq_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @roundup_pow_of_two(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8** @kmalloc_array(i64 %10, i32 4, i32 %11)
  %13 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %4, align 8
  %14 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %13, i32 0, i32 1
  store i8** %12, i8*** %14, align 8
  %15 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %4, align 8
  %16 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 1
  %25 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %4, align 8
  %26 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i8*, i8** @L2CAP_SEQ_LIST_CLEAR, align 8
  %28 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %4, align 8
  %29 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** @L2CAP_SEQ_LIST_CLEAR, align 8
  %31 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %4, align 8
  %32 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %44, %22
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i8*, i8** @L2CAP_SEQ_LIST_CLEAR, align 8
  %39 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %4, align 8
  %40 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* %38, i8** %43, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %33

47:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i8** @kmalloc_array(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
