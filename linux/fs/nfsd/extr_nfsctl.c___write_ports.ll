; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___write_ports.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c___write_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64, %struct.net*)* @__write_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_ports(%struct.file* %0, i8* %1, i64 %2, %struct.net* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.net*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.net* %3, %struct.net** %9, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.net*, %struct.net** %9, align 8
  %15 = call i32 @__write_ports_names(i8* %13, %struct.net* %14)
  store i32 %15, i32* %5, align 4
  br label %45

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = call i64 @isdigit(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.net*, %struct.net** %9, align 8
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__write_ports_addfd(i8* %23, %struct.net* %24, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %45

29:                                               ; preds = %16
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isalpha(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.net*, %struct.net** %9, align 8
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__write_ports_addxprt(i8* %36, %struct.net* %37, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %35, %22, %12
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @__write_ports_names(i8*, %struct.net*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @__write_ports_addfd(i8*, %struct.net*, i32) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @__write_ports_addxprt(i8*, %struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
