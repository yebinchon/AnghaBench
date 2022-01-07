; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_install_private.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stack_user.c_ocfs2_control_install_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.file = type { %struct.ocfs2_control_private* }
%struct.ocfs2_control_private = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@OCFS2_CONTROL_HANDSHAKE_PROTOCOL = common dso_local global i64 0, align 8
@ocfs2_control_lock = common dso_local global i32 0, align 4
@ocfs2_control_this_node = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ocfs2_live_connection_list = common dso_local global i32 0, align 4
@running_proto = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ocfs2_control_opened = common dso_local global i32 0, align 4
@OCFS2_CONTROL_HANDSHAKE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @ocfs2_control_install_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_control_install_private(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_control_private*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %7, align 8
  store %struct.ocfs2_control_private* %8, %struct.ocfs2_control_private** %5, align 8
  %9 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %10 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OCFS2_CONTROL_HANDSHAKE_PROTOCOL, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = call i32 @mutex_lock(i32* @ocfs2_control_lock)
  %17 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %35

22:                                               ; preds = %1
  %23 = load i64, i64* @ocfs2_control_this_node, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* @ocfs2_control_this_node, align 8
  %27 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %28 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %79

34:                                               ; preds = %25, %22
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %63

42:                                               ; preds = %35
  %43 = call i32 @list_empty(i32* @ocfs2_live_connection_list)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @running_proto, i32 0, i32 0), align 8
  %47 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @running_proto, i32 0, i32 1), align 8
  %54 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52, %45
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %79

62:                                               ; preds = %52, %42
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %68 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* @ocfs2_control_this_node, align 8
  %70 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %71 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @running_proto, i32 0, i32 0), align 8
  %74 = load %struct.ocfs2_control_private*, %struct.ocfs2_control_private** %5, align 8
  %75 = getelementptr inbounds %struct.ocfs2_control_private, %struct.ocfs2_control_private* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @running_proto, i32 0, i32 1), align 8
  br label %78

78:                                               ; preds = %66, %63
  br label %79

79:                                               ; preds = %78, %59, %31
  %80 = call i32 @mutex_unlock(i32* @ocfs2_control_lock)
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = call i32 @atomic_inc(i32* @ocfs2_control_opened)
  %88 = load %struct.file*, %struct.file** %2, align 8
  %89 = load i32, i32* @OCFS2_CONTROL_HANDSHAKE_VALID, align 4
  %90 = call i32 @ocfs2_control_set_handshake_state(%struct.file* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %83, %79
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ocfs2_control_set_handshake_state(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
