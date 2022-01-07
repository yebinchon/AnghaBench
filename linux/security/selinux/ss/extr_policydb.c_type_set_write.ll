; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_set_write.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_type_set_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type_set = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type_set*, i8*)* @type_set_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_set_write(%struct.type_set* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type_set*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  store %struct.type_set* %0, %struct.type_set** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.type_set*, %struct.type_set** %4, align 8
  %9 = getelementptr inbounds %struct.type_set, %struct.type_set* %8, i32 0, i32 2
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @ebitmap_write(i32* %9, i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.type_set*, %struct.type_set** %4, align 8
  %18 = getelementptr inbounds %struct.type_set, %struct.type_set* %17, i32 0, i32 1
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @ebitmap_write(i32* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.type_set*, %struct.type_set** %4, align 8
  %27 = getelementptr inbounds %struct.type_set, %struct.type_set* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @put_entry(i32* %31, i32 4, i32 1, i8* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36, %22, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @ebitmap_write(i32*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
