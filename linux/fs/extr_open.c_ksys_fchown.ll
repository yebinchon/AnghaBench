; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_ksys_fchown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_ksys_fchown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksys_fchown(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fd, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_4__* @fdget(i32 %9)
  %11 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %11, align 8
  %12 = load i32, i32* @EBADF, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %42

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @mnt_want_write_file(%struct.TYPE_4__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %38

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @audit_file(%struct.TYPE_4__* %27)
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @chown_common(i32* %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @mnt_drop_write_file(%struct.TYPE_4__* %36)
  br label %38

38:                                               ; preds = %25, %24
  %39 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @fdput(%struct.TYPE_4__* %40)
  br label %42

42:                                               ; preds = %38, %17
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_4__* @fdget(i32) #1

declare dso_local i32 @mnt_want_write_file(%struct.TYPE_4__*) #1

declare dso_local i32 @audit_file(%struct.TYPE_4__*) #1

declare dso_local i32 @chown_common(i32*, i32, i32) #1

declare dso_local i32 @mnt_drop_write_file(%struct.TYPE_4__*) #1

declare dso_local i32 @fdput(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
