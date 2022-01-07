; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_trailing_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_trailing_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@LOOKUP_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nameidata*)* @trailing_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trailing_symlink(%struct.nameidata* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %6 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %7 = call i32 @may_follow_link(%struct.nameidata* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @ERR_PTR(i32 %12)
  store i8* %13, i8** %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @LOOKUP_PARENT, align 4
  %16 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %26 = call i8* @get_link(%struct.nameidata* %25)
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = load i8*, i8** %4, align 8
  br label %32

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %31 ]
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %32, %11
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32 @may_follow_link(%struct.nameidata*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @get_link(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
