; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_signalfd.c_do_signalfd4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_signalfd.c_do_signalfd4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.signalfd_ctx = type { i8* }
%struct.fd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.signalfd_ctx* }

@SFD_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@SFD_NONBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[signalfd]\00", align 1
@signalfd_fops = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @do_signalfd4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_signalfd4(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.signalfd_ctx*, align 8
  %9 = alloca %struct.fd, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @SFD_CLOEXEC, align 4
  %11 = load i32, i32* @O_CLOEXEC, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i32, i32* @SFD_NONBLOCK, align 4
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SFD_CLOEXEC, align 4
  %22 = load i32, i32* @SFD_NONBLOCK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %121

30:                                               ; preds = %3
  %31 = load i8**, i8*** %6, align 8
  %32 = load i32, i32* @SIGKILL, align 4
  %33 = call i32 @sigmask(i32 %32)
  %34 = load i32, i32* @SIGSTOP, align 4
  %35 = call i32 @sigmask(i32 %34)
  %36 = or i32 %33, %35
  %37 = call i32 @sigdelsetmask(i8** %31, i32 %36)
  %38 = load i8**, i8*** %6, align 8
  %39 = call i32 @signotset(i8** %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %70

42:                                               ; preds = %30
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.signalfd_ctx* @kmalloc(i32 8, i32 %43)
  store %struct.signalfd_ctx* %44, %struct.signalfd_ctx** %8, align 8
  %45 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %8, align 8
  %46 = icmp ne %struct.signalfd_ctx* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %121

50:                                               ; preds = %42
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.signalfd_ctx, %struct.signalfd_ctx* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %8, align 8
  %56 = load i32, i32* @O_RDWR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @O_CLOEXEC, align 4
  %59 = load i32, i32* @O_NONBLOCK, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = or i32 %56, %61
  %63 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* @signalfd_fops, %struct.signalfd_ctx* %55, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  %67 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %8, align 8
  %68 = call i32 @kfree(%struct.signalfd_ctx* %67)
  br label %69

69:                                               ; preds = %66, %50
  br label %119

70:                                               ; preds = %30
  %71 = load i32, i32* %5, align 4
  %72 = call %struct.TYPE_4__* @fdget(i32 %71)
  %73 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %73, align 8
  %74 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @EBADF, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %121

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %83, align 8
  store %struct.signalfd_ctx* %84, %struct.signalfd_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, @signalfd_fops
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = call i32 @fdput(%struct.TYPE_4__* %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %121

96:                                               ; preds = %80
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = call i32 @spin_lock_irq(i32* %100)
  %102 = load i8**, i8*** %6, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.signalfd_ctx*, %struct.signalfd_ctx** %8, align 8
  %105 = getelementptr inbounds %struct.signalfd_ctx, %struct.signalfd_ctx* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock_irq(i32* %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = call i32 @wake_up(i32* %114)
  %116 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = call i32 @fdput(%struct.TYPE_4__* %117)
  br label %119

119:                                              ; preds = %96, %69
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %90, %77, %47, %27
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @sigdelsetmask(i8**, i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @signotset(i8**) #1

declare dso_local %struct.signalfd_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.signalfd_ctx*, i32) #1

declare dso_local i32 @kfree(%struct.signalfd_ctx*) #1

declare dso_local %struct.TYPE_4__* @fdget(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
