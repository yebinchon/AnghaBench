; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_fqdir_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_fqdir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fqdir = type { %struct.inet_frags*, i32, %struct.net* }
%struct.inet_frags = type { i32, i32 }
%struct.net = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fqdir_init(%struct.fqdir** %0, %struct.inet_frags* %1, %struct.net* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fqdir**, align 8
  %6 = alloca %struct.inet_frags*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fqdir*, align 8
  %9 = alloca i32, align 4
  store %struct.fqdir** %0, %struct.fqdir*** %5, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %6, align 8
  store %struct.net* %2, %struct.net** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fqdir* @kzalloc(i32 24, i32 %10)
  store %struct.fqdir* %11, %struct.fqdir** %8, align 8
  %12 = load %struct.fqdir*, %struct.fqdir** %8, align 8
  %13 = icmp ne %struct.fqdir* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %19 = load %struct.fqdir*, %struct.fqdir** %8, align 8
  %20 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %19, i32 0, i32 0
  store %struct.inet_frags* %18, %struct.inet_frags** %20, align 8
  %21 = load %struct.net*, %struct.net** %7, align 8
  %22 = load %struct.fqdir*, %struct.fqdir** %8, align 8
  %23 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %22, i32 0, i32 2
  store %struct.net* %21, %struct.net** %23, align 8
  %24 = load %struct.fqdir*, %struct.fqdir** %8, align 8
  %25 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %24, i32 0, i32 1
  %26 = load %struct.fqdir*, %struct.fqdir** %8, align 8
  %27 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %26, i32 0, i32 0
  %28 = load %struct.inet_frags*, %struct.inet_frags** %27, align 8
  %29 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %28, i32 0, i32 1
  %30 = call i32 @rhashtable_init(i32* %25, i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load %struct.fqdir*, %struct.fqdir** %8, align 8
  %35 = call i32 @kfree(%struct.fqdir* %34)
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %17
  %38 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %39 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %38, i32 0, i32 0
  %40 = call i32 @refcount_inc(i32* %39)
  %41 = load %struct.fqdir*, %struct.fqdir** %8, align 8
  %42 = load %struct.fqdir**, %struct.fqdir*** %5, align 8
  store %struct.fqdir* %41, %struct.fqdir** %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %37, %33, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.fqdir* @kzalloc(i32, i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.fqdir*) #1

declare dso_local i32 @refcount_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
