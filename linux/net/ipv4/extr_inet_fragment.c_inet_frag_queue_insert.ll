; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_queue_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_queue_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { %struct.TYPE_3__, %struct.sk_buff* }
%struct.TYPE_3__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@IPFRAG_OVERLAP = common dso_local global i32 0, align 4
@IPFRAG_DUP = common dso_local global i32 0, align 4
@IPFRAG_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_frag_queue_insert(%struct.inet_frag_queue* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inet_frag_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rb_node**, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  %16 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %15, i32 0, i32 1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = call i32 @fragrun_create(%struct.inet_frag_queue* %21, %struct.sk_buff* %22)
  br label %131

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = icmp slt i32 %35, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @IPFRAG_OVERLAP, align 4
  store i32 %45, i32* %5, align 4
  br label %136

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = icmp eq i32 %47, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @fragrun_append_to_last(%struct.inet_frag_queue* %57, %struct.sk_buff* %58)
  br label %64

60:                                               ; preds = %46
  %61 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = call i32 @fragrun_create(%struct.inet_frag_queue* %61, %struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %60, %56
  br label %130

65:                                               ; preds = %24
  %66 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  %67 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store %struct.rb_node** %68, %struct.rb_node*** %11, align 8
  br label %69

69:                                               ; preds = %113, %65
  %70 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %71 = load %struct.rb_node*, %struct.rb_node** %70, align 8
  store %struct.rb_node* %71, %struct.rb_node** %12, align 8
  %72 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %73 = call %struct.sk_buff* @rb_to_skb(%struct.rb_node* %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %13, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = call %struct.TYPE_4__* @FRAG_CB(%struct.sk_buff* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %76, %80
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %69
  %88 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %89 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %88, i32 0, i32 1
  store %struct.rb_node** %89, %struct.rb_node*** %11, align 8
  br label %112

90:                                               ; preds = %69
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %96 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %95, i32 0, i32 0
  store %struct.rb_node** %96, %struct.rb_node*** %11, align 8
  br label %111

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @IPFRAG_DUP, align 4
  store i32 %108, i32* %5, align 4
  br label %136

109:                                              ; preds = %103, %97
  %110 = load i32, i32* @IPFRAG_OVERLAP, align 4
  store i32 %110, i32* %5, align 4
  br label %136

111:                                              ; preds = %94
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %115 = load %struct.rb_node*, %struct.rb_node** %114, align 8
  %116 = icmp ne %struct.rb_node* %115, null
  br i1 %116, label %69, label %117

117:                                              ; preds = %113
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = call i32 @fragcb_clear(%struct.sk_buff* %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 2
  %122 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  %123 = load %struct.rb_node**, %struct.rb_node*** %11, align 8
  %124 = call i32 @rb_link_node(i32* %121, %struct.rb_node* %122, %struct.rb_node** %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 2
  %127 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %6, align 8
  %128 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %127, i32 0, i32 0
  %129 = call i32 @rb_insert_color(i32* %126, %struct.TYPE_3__* %128)
  br label %130

130:                                              ; preds = %117, %64
  br label %131

131:                                              ; preds = %130, %20
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @IPFRAG_OK, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %109, %107, %44
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @fragrun_create(%struct.inet_frag_queue*, %struct.sk_buff*) #1

declare dso_local i32 @fragrun_append_to_last(%struct.inet_frag_queue*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @rb_to_skb(%struct.rb_node*) #1

declare dso_local %struct.TYPE_4__* @FRAG_CB(%struct.sk_buff*) #1

declare dso_local i32 @fragcb_clear(%struct.sk_buff*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
