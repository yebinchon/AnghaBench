; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_ife_validate_metatype.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_ife_validate_metatype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_meta_ops = type { i32 (i8*, i32)*, i64 }

@NLA_U32 = common dso_local global i64 0, align 8
@NLA_U16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_meta_ops*, i8*, i32)* @ife_validate_metatype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ife_validate_metatype(%struct.tcf_meta_ops* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_meta_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcf_meta_ops* %0, %struct.tcf_meta_ops** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %5, align 8
  %10 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %9, i32 0, i32 0
  %11 = load i32 (i8*, i32)*, i32 (i8*, i32)** %10, align 8
  %12 = icmp ne i32 (i8*, i32)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %5, align 8
  %15 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %14, i32 0, i32 0
  %16 = load i32 (i8*, i32)*, i32 (i8*, i32)** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 %16(i8* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %5, align 8
  %22 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NLA_U32, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ife_validate_meta_u32(i8* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.tcf_meta_ops*, %struct.tcf_meta_ops** %5, align 8
  %32 = getelementptr inbounds %struct.tcf_meta_ops, %struct.tcf_meta_ops* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NLA_U16, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ife_validate_meta_u16(i8* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %30
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ife_validate_meta_u32(i8*, i32) #1

declare dso_local i32 @ife_validate_meta_u16(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
