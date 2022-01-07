; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_mls_read_level.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_mls_read_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mls_level = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"SELinux: mls: truncated level\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"SELinux: mls:  error reading level categories\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mls_level*, i8*)* @mls_read_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_read_level(%struct.mls_level* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mls_level*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.mls_level* %0, %struct.mls_level** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.mls_level*, %struct.mls_level** %4, align 8
  %9 = call i32 @memset(%struct.mls_level* %8, i32 0, i32 8)
  %10 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @next_entry(i32* %10, i8* %11, i32 4)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = load %struct.mls_level*, %struct.mls_level** %4, align 8
  %23 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mls_level*, %struct.mls_level** %4, align 8
  %25 = getelementptr inbounds %struct.mls_level, %struct.mls_level* %24, i32 0, i32 0
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @ebitmap_read(i32* %25, i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %30, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.mls_level*, i32, i32) #1

declare dso_local i32 @next_entry(i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ebitmap_read(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
