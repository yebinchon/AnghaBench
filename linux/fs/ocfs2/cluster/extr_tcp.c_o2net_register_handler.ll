; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_register_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_register_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.o2net_msg_handler = type { i32, i32, i32, i64, i64, i64, i32*, i8*, i32* }
%struct.rb_node = type { i32 }

@O2NET_MAX_PAYLOAD_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"max_len for message handler out of range: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"no message type provided: %u, %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"no message handler provided: %u, %p\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@o2net_handler_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@o2net_handler_tree = common dso_local global i32 0, align 4
@ML_TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"registered handler func %p type %u key %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"couldn't find handler we *just* registered for type %u key %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_register_handler(i64 %0, i64 %1, i64 %2, i32* %3, i8* %4, i32* %5, %struct.list_head* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.list_head*, align 8
  %15 = alloca %struct.o2net_msg_handler*, align 8
  %16 = alloca %struct.rb_node**, align 8
  %17 = alloca %struct.rb_node*, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.list_head* %6, %struct.list_head** %14, align 8
  store %struct.o2net_msg_handler* null, %struct.o2net_msg_handler** %15, align 8
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @O2NET_MAX_PAYLOAD_BYTES, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = load i64, i64* %10, align 8
  %24 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %18, align 4
  br label %115

27:                                               ; preds = %7
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %31, i32* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %18, align 4
  br label %115

36:                                               ; preds = %27
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %40, i32* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %18, align 4
  br label %115

45:                                               ; preds = %36
  %46 = load i32, i32* @GFP_NOFS, align 4
  %47 = call %struct.o2net_msg_handler* @kzalloc(i32 64, i32 %46)
  store %struct.o2net_msg_handler* %47, %struct.o2net_msg_handler** %15, align 8
  %48 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %49 = icmp eq %struct.o2net_msg_handler* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %18, align 4
  br label %115

53:                                               ; preds = %45
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %56 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %55, i32 0, i32 8
  store i32* %54, i32** %56, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %59 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %62 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %61, i32 0, i32 6
  store i32* %60, i32** %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %65 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %68 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %67, i32 0, i32 4
  store i64 %66, i64* %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %71 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %73 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %72, i32 0, i32 2
  %74 = call i32 @kref_init(i32* %73)
  %75 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %76 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %75, i32 0, i32 0
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = call i32 @write_lock(i32* @o2net_handler_lock)
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32* @o2net_handler_tree_lookup(i64 %79, i64 %80, %struct.rb_node*** %16, %struct.rb_node** %17)
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %53
  %84 = load i32, i32* @EEXIST, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %18, align 4
  br label %113

86:                                               ; preds = %53
  %87 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %88 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %87, i32 0, i32 1
  %89 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  %90 = load %struct.rb_node**, %struct.rb_node*** %16, align 8
  %91 = call i32 @rb_link_node(i32* %88, %struct.rb_node* %89, %struct.rb_node** %90)
  %92 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %93 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %92, i32 0, i32 1
  %94 = call i32 @rb_insert_color(i32* %93, i32* @o2net_handler_tree)
  %95 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %96 = getelementptr inbounds %struct.o2net_msg_handler, %struct.o2net_msg_handler* %95, i32 0, i32 0
  %97 = load %struct.list_head*, %struct.list_head** %14, align 8
  %98 = call i32 @list_add_tail(i32* %96, %struct.list_head* %97)
  %99 = load i32, i32* @ML_TCP, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = ptrtoint i32* %100 to i64
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 (i32, i8*, i64, ...) @mlog(i32 %99, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %101, i64 %102, i64 %103)
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32* @o2net_handler_tree_lookup(i64 %105, i64 %106, %struct.rb_node*** %16, %struct.rb_node** %17)
  %108 = icmp eq i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 @mlog_bug_on_msg(i32 %109, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %86, %83
  %114 = call i32 @write_unlock(i32* @o2net_handler_lock)
  br label %115

115:                                              ; preds = %113, %50, %39, %30, %22
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.o2net_msg_handler*, %struct.o2net_msg_handler** %15, align 8
  %120 = call i32 @kfree(%struct.o2net_msg_handler* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %18, align 4
  ret i32 %122
}

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local %struct.o2net_msg_handler* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32* @o2net_handler_tree_lookup(i64, i64, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.o2net_msg_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
