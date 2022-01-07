; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_ksys_fchmod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_ksys_fchmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksys_fchmod(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_2__* @fdget(i32 %7)
  %9 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %9, align 8
  %10 = load i32, i32* @EBADF, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @audit_file(%struct.TYPE_2__* %17)
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @chmod_common(i32* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @fdput(%struct.TYPE_2__* %25)
  br label %27

27:                                               ; preds = %15, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_2__* @fdget(i32) #1

declare dso_local i32 @audit_file(%struct.TYPE_2__*) #1

declare dso_local i32 @chmod_common(i32*, i32) #1

declare dso_local i32 @fdput(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
