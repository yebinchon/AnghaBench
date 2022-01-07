; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_mconf.c_conf.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_mconf.c_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_4__*, i8*, %struct.symbol* }
%struct.TYPE_4__ = type { i32 }
%struct.symbol = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.subtitle_part = type { i32, i32* }

@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@trail = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@current_menu = common dso_local global %struct.menu* null, align 8
@child_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Main Menu\00", align 1
@menu_instructions = common dso_local global i32 0, align 4
@KEY_ESC = common dso_local global i32 0, align 4
@ERRDISPLAYTOOSMALL = common dso_local global i32 0, align 4
@single_menu_mode = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@P_MENU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@mconf_readme = common dso_local global i32 0, align 4
@mod = common dso_local global i32 0, align 4
@setmod_text = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@show_all_options = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*, %struct.menu*)* @conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf(%struct.menu* %0, %struct.menu* %1) #0 {
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.menu*, align 8
  %5 = alloca %struct.menu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.subtitle_part, align 8
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %3, align 8
  store %struct.menu* %1, %struct.menu** %4, align 8
  %11 = load %struct.menu*, %struct.menu** %3, align 8
  %12 = call i8* @menu_get_prompt(%struct.menu* %11)
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.menu*, %struct.menu** %3, align 8
  %14 = icmp ne %struct.menu* %13, @rootmenu
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.menu*, %struct.menu** %3, align 8
  %17 = call i8* @menu_get_prompt(%struct.menu* %16)
  %18 = bitcast i8* %17 to i32*
  %19 = getelementptr inbounds %struct.subtitle_part, %struct.subtitle_part* %7, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  br label %22

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.subtitle_part, %struct.subtitle_part* %7, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.subtitle_part, %struct.subtitle_part* %7, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %23, %struct.TYPE_5__* @trail)
  br label %25

25:                                               ; preds = %22, %64, %68, %201
  %26 = call i32 (...) @item_reset()
  %27 = load %struct.menu*, %struct.menu** %3, align 8
  store %struct.menu* %27, %struct.menu** @current_menu, align 8
  %28 = load %struct.menu*, %struct.menu** %3, align 8
  %29 = call i32 @build_conf(%struct.menu* %28)
  %30 = load i32, i32* @child_count, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %202

33:                                               ; preds = %25
  %34 = call i32 (...) @set_subtitle()
  %35 = call i32 (...) @dialog_clear()
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %40 ]
  %43 = load i32, i32* @menu_instructions, align 4
  %44 = load %struct.menu*, %struct.menu** %4, align 8
  %45 = call i32 @dialog_menu(i8* %42, i32 %43, %struct.menu* %44, i32* %10)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %57, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @KEY_ESC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ERRDISPLAYTOOSMALL, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %48, %41
  br label %202

58:                                               ; preds = %52
  %59 = call i64 (...) @item_count()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = call i32 (...) @item_activate_selected()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %25

65:                                               ; preds = %61
  %66 = call i64 (...) @item_tag()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %25

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %58
  %71 = call %struct.menu* (...) @item_data()
  store %struct.menu* %71, %struct.menu** %5, align 8
  %72 = call %struct.menu* (...) @item_data()
  store %struct.menu* %72, %struct.menu** %4, align 8
  %73 = load %struct.menu*, %struct.menu** %5, align 8
  %74 = icmp ne %struct.menu* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.menu*, %struct.menu** %5, align 8
  %77 = getelementptr inbounds %struct.menu, %struct.menu* %76, i32 0, i32 2
  %78 = load %struct.symbol*, %struct.symbol** %77, align 8
  store %struct.symbol* %78, %struct.symbol** %8, align 8
  br label %80

79:                                               ; preds = %70
  store %struct.symbol* null, %struct.symbol** %8, align 8
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i32, i32* %9, align 4
  switch i32 %81, label %201 [
    i32 0, label %82
    i32 2, label %129
    i32 3, label %140
    i32 4, label %143
    i32 5, label %146
    i32 6, label %165
    i32 7, label %173
    i32 8, label %181
    i32 9, label %194
    i32 10, label %196
  ]

82:                                               ; preds = %80
  %83 = call i64 (...) @item_tag()
  switch i64 %83, label %128 [
    i64 109, label %84
    i64 116, label %101
    i64 115, label %125
  ]

84:                                               ; preds = %82
  %85 = load i32, i32* @single_menu_mode, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.menu*, %struct.menu** %5, align 8
  %89 = getelementptr inbounds %struct.menu, %struct.menu* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.menu*, %struct.menu** %5, align 8
  %97 = getelementptr inbounds %struct.menu, %struct.menu* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %100

98:                                               ; preds = %84
  %99 = load %struct.menu*, %struct.menu** %5, align 8
  call void @conf(%struct.menu* %99, %struct.menu* null)
  br label %100

100:                                              ; preds = %98, %87
  br label %128

101:                                              ; preds = %82
  %102 = load %struct.symbol*, %struct.symbol** %8, align 8
  %103 = call i32 @sym_is_choice(%struct.symbol* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.symbol*, %struct.symbol** %8, align 8
  %107 = call i32 @sym_get_tristate_value(%struct.symbol* %106)
  %108 = load i32, i32* @yes, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.menu*, %struct.menu** %5, align 8
  %112 = call i32 @conf_choice(%struct.menu* %111)
  br label %124

113:                                              ; preds = %105, %101
  %114 = load %struct.menu*, %struct.menu** %5, align 8
  %115 = getelementptr inbounds %struct.menu, %struct.menu* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @P_MENU, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load %struct.menu*, %struct.menu** %5, align 8
  call void @conf(%struct.menu* %122, %struct.menu* null)
  br label %123

123:                                              ; preds = %121, %113
  br label %124

124:                                              ; preds = %123, %110
  br label %128

125:                                              ; preds = %82
  %126 = load %struct.menu*, %struct.menu** %5, align 8
  %127 = call i32 @conf_string(%struct.menu* %126)
  br label %128

128:                                              ; preds = %82, %125, %124, %100
  br label %201

129:                                              ; preds = %80
  %130 = load %struct.symbol*, %struct.symbol** %8, align 8
  %131 = icmp ne %struct.symbol* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.menu*, %struct.menu** %5, align 8
  %134 = call i32 @show_help(%struct.menu* %133)
  br label %139

135:                                              ; preds = %129
  %136 = call i32 (...) @reset_subtitle()
  %137 = load i32, i32* @mconf_readme, align 4
  %138 = call i32 @show_helptext(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %135, %132
  br label %201

140:                                              ; preds = %80
  %141 = call i32 (...) @reset_subtitle()
  %142 = call i32 (...) @conf_save()
  br label %201

143:                                              ; preds = %80
  %144 = call i32 (...) @reset_subtitle()
  %145 = call i32 (...) @conf_load()
  br label %201

146:                                              ; preds = %80
  %147 = call i32 @item_is_tag(i8 signext 116)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load %struct.symbol*, %struct.symbol** %8, align 8
  %151 = load i32, i32* @yes, align 4
  %152 = call i32 @sym_set_tristate_value(%struct.symbol* %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %201

155:                                              ; preds = %149
  %156 = load %struct.symbol*, %struct.symbol** %8, align 8
  %157 = load i32, i32* @mod, align 4
  %158 = call i32 @sym_set_tristate_value(%struct.symbol* %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* @setmod_text, align 4
  %162 = call i32 @show_textbox(i32* null, i32 %161, i32 6, i32 74)
  br label %163

163:                                              ; preds = %160, %155
  br label %164

164:                                              ; preds = %163, %146
  br label %201

165:                                              ; preds = %80
  %166 = call i32 @item_is_tag(i8 signext 116)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.symbol*, %struct.symbol** %8, align 8
  %170 = load i32, i32* @no, align 4
  %171 = call i32 @sym_set_tristate_value(%struct.symbol* %169, i32 %170)
  br label %172

172:                                              ; preds = %168, %165
  br label %201

173:                                              ; preds = %80
  %174 = call i32 @item_is_tag(i8 signext 116)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load %struct.symbol*, %struct.symbol** %8, align 8
  %178 = load i32, i32* @mod, align 4
  %179 = call i32 @sym_set_tristate_value(%struct.symbol* %177, i32 %178)
  br label %180

180:                                              ; preds = %176, %173
  br label %201

181:                                              ; preds = %80
  %182 = call i32 @item_is_tag(i8 signext 116)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.symbol*, %struct.symbol** %8, align 8
  %186 = call i32 @sym_toggle_tristate_value(%struct.symbol* %185)
  br label %193

187:                                              ; preds = %181
  %188 = call i32 @item_is_tag(i8 signext 109)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load %struct.menu*, %struct.menu** %5, align 8
  call void @conf(%struct.menu* %191, %struct.menu* null)
  br label %192

192:                                              ; preds = %190, %187
  br label %193

193:                                              ; preds = %192, %184
  br label %201

194:                                              ; preds = %80
  %195 = call i32 (...) @search_conf()
  br label %201

196:                                              ; preds = %80
  %197 = load i32, i32* @show_all_options, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  store i32 %200, i32* @show_all_options, align 4
  br label %201

201:                                              ; preds = %80, %196, %194, %193, %180, %172, %164, %154, %143, %140, %139, %128
  br label %25

202:                                              ; preds = %57, %32
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @trail, i32 0, i32 0), align 4
  %204 = call i32 @list_del(i32 %203)
  ret void
}

declare dso_local i8* @menu_get_prompt(%struct.menu*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @item_reset(...) #1

declare dso_local i32 @build_conf(%struct.menu*) #1

declare dso_local i32 @set_subtitle(...) #1

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i32 @dialog_menu(i8*, i32, %struct.menu*, i32*) #1

declare dso_local i64 @item_count(...) #1

declare dso_local i32 @item_activate_selected(...) #1

declare dso_local i64 @item_tag(...) #1

declare dso_local %struct.menu* @item_data(...) #1

declare dso_local i32 @sym_is_choice(%struct.symbol*) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i32 @conf_choice(%struct.menu*) #1

declare dso_local i32 @conf_string(%struct.menu*) #1

declare dso_local i32 @show_help(%struct.menu*) #1

declare dso_local i32 @reset_subtitle(...) #1

declare dso_local i32 @show_helptext(i8*, i32) #1

declare dso_local i32 @conf_save(...) #1

declare dso_local i32 @conf_load(...) #1

declare dso_local i32 @item_is_tag(i8 signext) #1

declare dso_local i32 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @show_textbox(i32*, i32, i32, i32) #1

declare dso_local i32 @sym_toggle_tristate_value(%struct.symbol*) #1

declare dso_local i32 @search_conf(...) #1

declare dso_local i32 @list_del(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
